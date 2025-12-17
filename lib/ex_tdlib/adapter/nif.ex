defmodule ExTDLib.Adapter.Nif do
  @moduledoc """
  Adapter for the Nif backend.
  """
  @behaviour ExTDLib.Adapter

  use GenServer

  alias ExTDLib.Nif
  alias ExTDLib.Session.Registry

  require Logger

  # Client API

  def start_link(name, opts \\ []) do
    GenServer.start_link(__MODULE__, name, opts)
  end

  def transmit(pid, msg) do
    GenServer.call(pid, {:transmit, msg})
  end

  # Server Callbacks

  @impl true
  def init(name) do
    # Register itself
    true = Registry.update(name, backend_pid: self())

    # Create the client via NIF
    # We delay creation to handle potential loading issues gracefully?
    # No, if NIF is missing, we crash.
    client = Nif.client_create()

    state = %{
      name: name,
      client: client,
      poller: nil
    }

    # Start polling
    # We spawn a separate process for polling because receive blocks
    # even if it is a dirty nif, we want the GenServer to be responsive for transmit.
    parent = self()
    poller = spawn_link(fn -> poll(parent, client) end)

    {:ok, Map.put(state, :poller, poller)}
  end

  @impl true
  def handle_call({:transmit, msg}, _from, state) do
    Nif.client_send(state.client, msg)
    {:reply, :ok, state}
  end

  @impl true
  def handle_cast({:incoming, msg}, state) do
    handle_incoming(state.name, msg)
    {:noreply, state}
  end

  # Polling logic
  defp poll(parent, client) do
    # Receive with timeout 1.0s
    case Nif.client_receive(client, 1.0) do
      nil ->
        # Timeout, continue
        poll(parent, client)

      msg when is_binary(msg) ->
        # Send back to parent to route
        # Or route directly to handler?
        # Routing to parent ensures we access Registry/State correctly if needed
        # But for performance we might check Registry here.
        # Let's send to parent for now to match Tdjson behavior of serializing through logic?
        # Tdjson receives from Port and forwards to Handler.

        # We can implement forwarding directly here to avoid bottlenecking the GenServer
        # processing incoming messages if we trust Registry is set.

        # Let's verify how Tdjson does it.
        # It sends to handler_pid.

        # We need the name.
        # Let's just cast to parent.
        GenServer.cast(parent, {:incoming, msg})
        poll(parent, client)
    end
  end

  defp handle_incoming(name, msg) do
    handler_pid = Registry.get(name, :handler_pid)

    if handler_pid do
      send(handler_pid, {:ex_tdlib, msg})
    else
      Logger.warning("#{name}: incoming message but no handler registered.")
    end
  end
end
