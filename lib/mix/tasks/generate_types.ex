defmodule Mix.Tasks.GenerateTypes do
  @moduledoc """
  Generates ExTDLib.Object and ExTDLib.Method modules from TDLib's td_api.tl schema.

  Types are split into separate files by category for faster compilation.

  - If category has 1 type: `ExTDLib.Object.TypeName` (flat)
  - If category has >1 types: `ExTDLib.Object.Category.TypeName` (nested)

  ## Usage

      TDLIB_API_TL_PATH=/path/to/td_api.tl mix generate_types

  ## Environment Variables

  - `TDLIB_API_TL_PATH` - Path to the td_api.tl file (required)
  """
  use Mix.Task

  alias Mix.Tasks.Utils.TLParser

  @doc false
  def run(_) do
    tl_path = get_tl_path()

    object_dir = get_object_dir()
    method_dir = get_method_dir()
    lookup_file = get_lookup_file()

    IO.puts("Parsing #{tl_path}...")

    case TLParser.parse_file(tl_path) do
      {:ok, schema} ->
        IO.puts("#{length(schema.objects)} objects found.")
        IO.puts("#{length(schema.functions)} functions found.")

        grouped = TLParser.group_definitions(schema)

        IO.puts("#{map_size(grouped.objects)} object categories.")
        IO.puts("#{map_size(grouped.functions)} method categories.")

        clean_old_files(object_dir, method_dir, lookup_file)
        generate_object_files(grouped.objects, object_dir)
        generate_method_files(grouped.functions, method_dir)
        generate_type_lookup(grouped, lookup_file)

        IO.puts("Everything looks fine. Bye!")

      {:error, reason} ->
        Mix.raise("Failed to read #{tl_path}: #{inspect(reason)}")
    end
  end

  defp get_root_dir do
    System.get_env("EXTDLIB_ROOT_DIR") || "."
  end

  defp get_object_dir, do: Path.join(get_root_dir(), "lib/ex_tdlib/object")
  defp get_method_dir, do: Path.join(get_root_dir(), "lib/ex_tdlib/method")
  defp get_lookup_file, do: Path.join(get_root_dir(), "lib/ex_tdlib/type_lookup.ex")

  defp get_tl_path do
    case System.get_env("TDLIB_API_TL_PATH") do
      nil -> Mix.raise("TDLIB_API_TL_PATH environment variable is not set")
      path -> path
    end
  end

  defp clean_old_files(object_dir, method_dir, lookup_file) do
    IO.puts("Cleaning old files...")
    File.rm_rf!(object_dir)
    File.rm_rf!(method_dir)
    File.rm(lookup_file)
    File.mkdir_p!(object_dir)
    File.mkdir_p!(method_dir)
  end

  defp generate_object_files(grouped_objects, object_dir) do
    IO.puts("Writing object modules...")

    for {category, definitions} <- grouped_objects do
      file_path = Path.join(object_dir, "#{category}.ex")
      content = build_category_module("ExTDLib.Object", category, definitions)
      File.write!(file_path, content)
    end
  end

  defp generate_method_files(grouped_functions, method_dir) do
    IO.puts("Writing method modules...")

    for {category, definitions} <- grouped_functions do
      file_path = Path.join(method_dir, "#{category}.ex")
      content = build_category_module("ExTDLib.Method", category, definitions)
      File.write!(file_path, content)
    end
  end

  defp build_category_module(namespace, category, definitions) do
    category_module = TLParser.to_module_name(category)

    if length(definitions) == 1 do
      # Single type - flat module without nesting
      [definition] = definitions
      build_flat_module(namespace, definition)
    else
      # Multiple types - nested modules
      build_nested_category_module(namespace, category_module, definitions)
    end
  end

  defp build_flat_module(namespace, definition) do
    module_name = TLParser.to_module_name(definition.name)
    fields = definition.fields || []
    params = definition.params || []

    struct_fields = build_struct_fields(fields)
    fields_doc = build_fields_doc(fields, params)

    description =
      case definition.description do
        nil -> ""
        desc -> format_lines(desc, 2)
      end

    """
    defmodule #{namespace}.#{module_name} do
      @moduledoc \"\"\"
    #{description}
    #{format_lines(fields_doc, 2)}
      \"\"\"

      defstruct "@type": "#{definition.name}", "@extra": nil#{struct_fields}
    end
    """
  end

  defp build_nested_category_module(namespace, category_module, definitions) do
    nested_modules =
      Enum.map_join(definitions, "\n", &build_nested_type(category_module, &1))

    """
    defmodule #{namespace}.#{category_module} do
      @moduledoc \"\"\"
      #{category_module} types.
      Contains #{length(definitions)} type(s).
      \"\"\"

    #{nested_modules}
    end
    """
  end

  defp build_nested_type(category_module, definition) do
    full_name = TLParser.to_module_name(definition.name)
    short_name = remove_prefix(full_name, category_module)

    fields = definition.fields || []
    params = definition.params || []

    struct_fields = build_struct_fields(fields)
    fields_doc = build_fields_doc(fields, params)

    description =
      case definition.description do
        nil -> ""
        desc -> format_lines(desc, 6)
      end

    """
      defmodule #{short_name} do
        @moduledoc \"\"\"
    #{description}
    #{format_lines(fields_doc, 6)}
        \"\"\"

        defstruct "@type": "#{definition.name}", "@extra": nil#{struct_fields}
      end
    """
  end

  defp remove_prefix(full_name, prefix) do
    if String.starts_with?(full_name, prefix) do
      result = String.replace_prefix(full_name, prefix, "")

      if result == "" or String.match?(result, ~r/^[a-z]/) do
        full_name
      else
        result
      end
    else
      full_name
    end
  end

  defp build_struct_fields(fields) do
    Enum.map_join(fields, fn field -> ", #{field.name}: nil" end)
  end

  defp build_fields_doc([], _params), do: ""

  defp build_fields_doc(fields, params) do
    param_descriptions = Map.new(params, fn p -> {p.name, p.description} end)

    table_header = """
    | Name | Type | Description |
    |------|------|-------------|
    """

    table_lines =
      Enum.map_join(fields, fn field ->
        desc = Map.get(param_descriptions, field.name, "")
        "| #{field.name} | #{field.type} | #{desc} |\n"
      end)

    table_header <> table_lines
  end

  defp format_lines(nil, _padding), do: ""
  defp format_lines("", _padding), do: ""

  defp format_lines(text, padding) do
    pad = String.duplicate(" ", padding)

    text
    |> String.trim("\n")
    |> String.split("\n")
    |> Enum.map_join(&(pad <> &1 <> "\n"))
  end

  defp generate_type_lookup(grouped, lookup_file) do
    IO.puts("Writing type lookup module...")

    object_clauses =
      grouped.objects
      |> Enum.flat_map(fn {category, definitions} ->
        build_lookup_clauses("object", "ExTDLib.Object", category, definitions)
      end)
      |> Enum.join("\n")

    method_clauses =
      grouped.functions
      |> Enum.flat_map(fn {category, definitions} ->
        build_lookup_clauses("method", "ExTDLib.Method", category, definitions)
      end)
      |> Enum.join("\n")

    content = """
    defmodule ExTDLib.TypeLookup do
      @moduledoc \"\"\"
      Lookup table for mapping TDLib @type strings to Elixir modules.
      Generated automatically by `mix generate_types`.
      \"\"\"

      @doc \"\"\"
      Returns the module for a given type string.

      ## Examples

          iex> ExTDLib.TypeLookup.get_module(:object, "error")
          ExTDLib.Object.Error

          iex> ExTDLib.TypeLookup.get_module(:object, "authorizationStateWaitCode")
          ExTDLib.Object.AuthorizationState.WaitCode

          iex> ExTDLib.TypeLookup.get_module(:method, "getMe")
          ExTDLib.Method.Get.Me
      \"\"\"
    #{object_clauses}

    #{method_clauses}

      def get_module(_, _), do: nil
    end
    """

    File.write!(lookup_file, content)
  end

  defp build_lookup_clauses(kind, namespace, category, definitions) do
    category_module = TLParser.to_module_name(category)

    if length(definitions) == 1 do
      # Single type - flat module
      [definition] = definitions
      module_name = TLParser.to_module_name(definition.name)
      ["  def get_module(:#{kind}, \"#{definition.name}\"), do: #{namespace}.#{module_name}"]
    else
      # Multiple types - nested modules
      Enum.map(definitions, fn definition ->
        full_name = TLParser.to_module_name(definition.name)
        short_name = remove_prefix(full_name, category_module)
        "  def get_module(:#{kind}, \"#{definition.name}\"), do: #{namespace}.#{category_module}.#{short_name}"
      end)
    end
  end
end
