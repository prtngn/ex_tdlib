defmodule ExTDLib.Handler do
  @moduledoc false
  use GenServer

  alias ExTDLib.Object
  alias ExTDLib.Session.Registry

  require Logger

  # Must be a multiple of 4
  @backend_verbosity_level 2

  def start_link(session_name) do
    GenServer.start_link(__MODULE__, session_name, [])
  end

  # session is the session's name (= identifier)
  def init(session) do
    # Register itself
    true = Registry.update(session, handler_pid: self())

    {:ok, session}
  end

  def handle_info({:ex_tdlib, msg}, session) do
    json = Jason.decode!(msg)
    keys = Map.keys(json)

    cond do
      "@cli" in keys -> handle_cli(json, session)
      "@type" in keys -> handle_object(json, session)
      true -> Logger.warning("#{session}: unknown structure received")
    end

    {:noreply, session}
  end

  ###

  def handle_cli(json, session) do
    cli = Map.get(json, "@cli")
    event = Map.get(cli, "event")

    Logger.debug("#{session}: received cli event #{event}")

    case event do
      "client_created" -> set_backend_verbosity(@backend_verbosity_level, session)
      _ -> :ignore
    end
  end

  def handle_object(json, session) do
    type = Map.get(json, "@type")
    Logger.debug("#{session}: received object #{type}")

    try do
      struct = recursive_match(:object, json, "Elixir.ExTDLib.Object.")
      do_handle_object(session, type, struct, disable_handling())
    rescue
      _ -> Logger.info("No matching object found: #{inspect(type)}")
    end
  end

  defp do_handle_object(session, _, struct, true), do: forward_to_client(session, struct)

  defp do_handle_object(session, _, struct, _) do
    case struct do
      %Object.Error{code: code, message: message} ->
        Logger.error("#{session}: error #{code} - #{message}")

      %Object.UpdateAuthorizationState{} ->
        case struct.authorization_state do
          %Object.AuthorizationStateWaitTdlibParameters{} ->
            config = session |> Registry.get() |> Map.get(:config)
            transmit(session, config)

          _ ->
            :ignore
        end

      _ ->
        :ignore
    end

    forward_to_client(session, struct)
  end

  defp forward_to_client(session, struct) do
    client_pid = session |> Registry.get() |> Map.get(:client_pid)
    do_forward_to_client(client_pid, Process.alive?(client_pid), struct)
  end

  defp do_forward_to_client(_, false, _), do: nil
  defp do_forward_to_client(client_pid, _, struct), do: Kernel.send(client_pid, {:recv, struct})

  ###

  defp transmit(session, map) do
    msg =
      map
      |> Map.delete(:__struct__)
      |> Jason.encode!()

    backend_pid = Registry.get(session, :backend_pid)

    Logger.debug("#{session}: sending #{Map.get(map, :"@type")}")
    GenServer.call(backend_pid, {:transmit, msg})
  end

  defp set_backend_verbosity(level, session) do
    # Set tdlib's verbosity level
    backend_pid = Registry.get(session, :backend_pid)
    command = "verbose #{level}"
    GenServer.call(backend_pid, {:transmit, command})

    Logger.debug("#{session}: backend verbosity set to #{level}.")
  end

  defp recursive_match(:object, json, prefix) do
    # Match depth 1
    struct = match(:object, json, prefix)

    # Look for maps at depth n+1
    nested_maps = :maps.filter(fn _, v -> is_map(v) end, struct)

    # Math depth n+1
    nested_structs = :maps.map(fn _k, v -> recursive_match(:object, v, prefix) end, nested_maps)

    # Merge
    Map.merge(struct, nested_structs)
  end

  defp match(:object, json, prefix) do
    type =
      json
      |> Map.get("@type")
      |> ExTDLib.titlecase_once()

    string = prefix <> type
    module = String.to_existing_atom(string)

    struct = struct(module)

    Enum.reduce(Map.to_list(struct), struct, fn {k, _}, acc ->
      case Map.fetch(json, Atom.to_string(k)) do
        {:ok, v} -> %{acc | k => v}
        :error -> acc
      end
    end)
  end

  defp disable_handling do
    Application.get_env(:ex_tdlib, :disable_handling)
  end
end
