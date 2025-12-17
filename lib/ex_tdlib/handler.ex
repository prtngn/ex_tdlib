defmodule ExTDLib.Handler do
  @moduledoc false
  use GenServer

  alias ExTDLib.Deserializer
  alias ExTDLib.Object
  alias ExTDLib.Session.Registry
  alias ExTDLib.TypeLookup

  require Logger

  def start_link(session_name) do
    GenServer.start_link(__MODULE__, session_name, [])
  end

  def init(session) do
    # Register itself
    true = Registry.update(session, handler_pid: self())
    {:ok, session}
  end

  def handle_info({:ex_tdlib, msg}, session) do
    json = Jason.decode!(msg)

    # We ignore CLI events (@cli) and only process objects (@type)
    if Map.has_key?(json, "@type") do
      handle_object(json, session)
    end

    {:noreply, session}
  end

  def handle_object(json, session) do
    type = Map.get(json, "@type")

    # Quick check using TypeLookup before trying full deserialization
    case TypeLookup.get_module(:object, type) do
      nil ->
        Logger.warning("#{session}: unknown object type: #{type}")

      _module ->
        try do
          json
          |> Deserializer.to_struct()
          |> do_handle_object(session, type, disable_handling())
        rescue
          e ->
            Logger.error("#{session}: error processing #{type}: #{Exception.message(e)}")
        end
    end
  end

  defp do_handle_object(struct, session, _, true), do: forward_to_client(session, struct)

  defp do_handle_object(struct, session, _, _) do
    # Intercept specific lifecycle events
    case struct do
      %Object.Update.AuthorizationState{authorization_state: %Object.AuthorizationState.WaitTdlibParameters{}} ->
        # Automatically send parameters
        config = session |> Registry.get() |> Map.get(:config)
        transmit(session, config)

      %Object.Error{code: code, message: message} ->
        Logger.error("#{session}: error #{code} - #{message}")

      _ ->
        :ok
    end

    forward_to_client(session, struct)
  end

  defp forward_to_client(session, struct) do
    client_pid = Registry.get(session, :client_pid)

    if is_pid(client_pid) and Process.alive?(client_pid) do
      send(client_pid, {:recv, struct})
    else
      Logger.debug("#{session}: client process not alive or not registered")
    end
  end

  defp transmit(session, map) do
    msg =
      map
      |> Map.delete(:__struct__)
      |> Jason.encode!()

    backend_pid = Registry.get(session, :backend_pid)
    GenServer.call(backend_pid, {:transmit, msg})
  end

  defp disable_handling do
    Application.get_env(:ex_tdlib, :disable_handling)
  end
end
