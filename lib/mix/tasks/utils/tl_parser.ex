defmodule Mix.Tasks.Utils.TLParser do
  @moduledoc """
  Parser for TDLib's td_api.tl schema file.

  Parses Type Language (TL) format directly without needing doxygen, PHP, or Ruby.
  """

  @doc """
  Parses a td_api.tl file and returns a map with :objects and :functions.

  ## Example

      {:ok, schema} = Mix.Tasks.Utils.TLParser.parse_file("/path/to/td_api.tl")
      schema.objects  # list of object definitions
      schema.functions  # list of function definitions
  """
  def parse_file(path) do
    case File.read(path) do
      {:ok, content} -> {:ok, parse(content)}
      {:error, reason} -> {:error, reason}
    end
  end

  @doc """
  Parses TL schema content and returns a map with :objects and :functions.
  """
  def parse(content) do
    lines = String.split(content, "\n")

    {objects, functions} =
      lines
      |> Enum.reduce({[], nil, :objects}, &process_line/2)
      |> finalize()

    %{objects: objects, functions: functions}
  end

  @doc """
  Groups definitions by their category.
  - Objects are grouped by return_type (their class)
  - Functions are grouped by prefix (get, set, send, etc.)
  """
  def group_definitions(%{objects: objects, functions: functions}) do
    grouped_objects =
      objects
      |> Enum.group_by(& &1.return_type)
      |> Map.new(fn {category, items} -> {to_snake_case(category), items} end)

    grouped_functions =
      functions
      |> Enum.group_by(&extract_method_prefix(&1.name))
      |> Map.new()

    %{objects: grouped_objects, functions: grouped_functions}
  end

  defp extract_method_prefix(name) do
    # Extract prefix before first uppercase letter after start
    # e.g., "getMessage" -> "get", "setTdlibParameters" -> "set"
    case Regex.run(~r/^([a-z]+)/, name) do
      [_, prefix] -> prefix
      _ -> "other"
    end
  end

  # Process each line and accumulate definitions
  defp process_line(line, {definitions, current, mode}) do
    line = String.trim(line)

    cond do
      # Switch to functions mode
      line == "---functions---" ->
        definitions = maybe_add_definition(definitions, current)
        {definitions, nil, :functions}

      # Skip empty lines
      line == "" ->
        {definitions, current, mode}

      # Skip primitive type definitions at the start
      primitive_definition?(line) ->
        {definitions, current, mode}

      # Class description (grouping hint, we skip it)
      String.starts_with?(line, "//@class ") ->
        {definitions, current, mode}

      # Description start
      String.starts_with?(line, "//@description ") ->
        definitions = maybe_add_definition(definitions, current)
        desc = String.replace_prefix(line, "//@description ", "")
        {definitions, %{description: desc, params: [], mode: mode}, mode}

      # Description continuation
      String.starts_with?(line, "//-") ->
        continuation = String.replace_prefix(line, "//-", "")

        current =
          if current do
            Map.update!(current, :description, &(&1 <> " " <> continuation))
          else
            current
          end

        {definitions, current, mode}

      # Parameter description
      String.starts_with?(line, "//@") ->
        param_desc = String.replace_prefix(line, "//@", "")

        case String.split(param_desc, " ", parts: 2) do
          [param_name, param_description] ->
            current =
              if current do
                param = %{name: param_name, description: param_description}
                Map.update!(current, :params, &(&1 ++ [param]))
              else
                current
              end

            {definitions, current, mode}

          _ ->
            {definitions, current, mode}
        end

      # Type/function definition line
      String.contains?(line, "=") and String.ends_with?(line, ";") ->
        current =
          if current do
            parse_definition_line(line, current)
          else
            # Definition without description
            parse_definition_line(line, %{description: nil, params: [], mode: mode})
          end

        {definitions, current, mode}

      # Other comment lines (skip)
      String.starts_with?(line, "//") ->
        {definitions, current, mode}

      true ->
        {definitions, current, mode}
    end
  end

  defp primitive_definition?(line) do
    # Skip lines like "double ? = Double;", "int32 = Int32;", "vector {t:Type} # [ t ] = Vector t;"
    line =~ ~r/^(double|string|int32|int53|int64|bytes|boolFalse|boolTrue|vector)\s/
  end

  defp parse_definition_line(line, current) do
    # Remove trailing semicolon
    line = String.trim_trailing(line, ";")

    # Split by " = " to get left and right parts
    case String.split(line, " = ", parts: 2) do
      [left, return_type] ->
        {name, fields} = parse_left_part(left)

        current
        |> Map.put(:name, name)
        |> Map.put(:return_type, String.trim(return_type))
        |> Map.put(:fields, fields)

      _ ->
        current
    end
  end

  defp parse_left_part(left) do
    parts = String.split(left, " ", trim: true)

    case parts do
      [name | field_parts] ->
        fields = Enum.map(field_parts, &parse_field/1)
        {name, fields}

      _ ->
        {left, []}
    end
  end

  defp parse_field(field_str) do
    case String.split(field_str, ":", parts: 2) do
      [name, type] -> %{name: name, type: type}
      _ -> %{name: field_str, type: "unknown"}
    end
  end

  defp maybe_add_definition(definitions, nil), do: definitions

  defp maybe_add_definition(definitions, current) do
    if Map.has_key?(current, :name) do
      definitions ++ [current]
    else
      definitions
    end
  end

  defp finalize({definitions, current, _mode}) do
    definitions = maybe_add_definition(definitions, current)

    objects = Enum.filter(definitions, &(&1.mode == :objects))
    functions = Enum.filter(definitions, &(&1.mode == :functions))

    {objects, functions}
  end

  @doc """
  Converts a TL type name to Elixir module name format.
  E.g., "authenticationCodeTypeSms" -> "AuthenticationCodeTypeSms"
       "authorization_state" -> "AuthorizationState"
  """
  def to_module_name(name) do
    if String.contains?(name, "_") do
      # snake_case to PascalCase
      name
      |> String.split("_")
      |> Enum.map_join(&String.capitalize/1)
    else
      # camelCase to PascalCase
      name
      |> String.first()
      |> String.upcase()
      |> Kernel.<>(String.slice(name, 1..-1//1))
    end
  end

  @doc """
  Converts a CamelCase or camelCase string to snake_case.
  E.g., "AuthorizationState" -> "authorization_state"
  """
  def to_snake_case(name) do
    name
    |> String.replace(~r/([A-Z])/, "_\\1")
    |> String.downcase()
    |> String.trim_leading("_")
  end

  @doc """
  Maps TL types to Elixir type specs.
  """
  def tl_type_to_elixir_type(tl_type) do
    case tl_type do
      "int32" -> "integer()"
      "int53" -> "integer()"
      "int64" -> "integer()"
      "double" -> "float()"
      "string" -> "String.t()"
      "bytes" -> "binary()"
      "Bool" -> "boolean()"
      "vector<" <> rest -> "list(#{tl_type_to_elixir_type(String.trim_trailing(rest, ">"))})"
      type -> "ExTDLib.Object.#{to_module_name(type)}.t()"
    end
  end
end
