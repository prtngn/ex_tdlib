defmodule ExTDLib.Deserializer do
  @moduledoc false

  alias ExTDLib.TypeLookup

  def to_struct(json) do
    recursive_match(json, "Elixir.ExTDLib.Object.")
  end

  defp recursive_match(json, prefix) do
    # Match depth 1
    struct = match(:object, json, prefix)

    # Look for maps at depth n+1
    nested_maps = :maps.filter(fn _, v -> is_map(v) end, struct)

    # Match depth n+1
    nested_structs = :maps.map(fn _k, v -> recursive_match(v, prefix) end, nested_maps)

    # Merge
    Map.merge(struct, nested_structs)
  end

  defp match(:object, json, _prefix) do
    type = Map.get(json, "@type")

    case TypeLookup.get_module(:object, type) do
      nil ->
        raise "Unknown object type: #{type}"

      module ->
        struct = struct(module)

        Enum.reduce(Map.to_list(struct), struct, fn {k, _}, acc ->
          case Map.fetch(json, Atom.to_string(k)) do
            {:ok, v} -> %{acc | k => v}
            :error -> acc
          end
        end)
    end
  end
end
