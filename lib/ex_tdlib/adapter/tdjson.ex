defmodule ExTDLib.Adapter.Tdjson do
  @moduledoc """
  Adapter for the Tdjson backend.
  """
  @behaviour ExTDLib.Adapter

  use GenServer

  alias ExTDLib.Session.Registry

  require Logger

  @port_opts [:binary, :line]

  # Internal state
  defstruct [:name, :port, :buffer]

  # Client API

  @impl true
  def start_link(name, opts \\ []) do
    GenServer.start_link(__MODULE__, name, opts)
  end

  @impl true
  def transmit(pid, msg) do
    GenServer.call(pid, {:transmit, msg})
  end

  # Server Callbacks

  @impl true
  def init(name) do
    # Register itself
    true = Registry.update(name, backend_pid: self())

    # Get binary path at runtime
    binary = ExTDLib.get_backend_binary()

    # Generate the process' internal state, open the port
    state = %__MODULE__{
      name: name,
      buffer: "",
      port: Port.open({:spawn_executable, binary}, @port_opts)
    }

    # Configure logging
    Enum.each(ExTDLib.get_log_requests(), fn req ->
      data = Jason.encode!(req) <> "\n"
      Kernel.send(state.port, {self(), {:command, data}})
    end)

    {:ok, state}
  end

  @impl true
  def handle_call({:transmit, msg}, _from, state) do
    data = msg <> "\n"
    result = Kernel.send(state.port, {self(), {:command, data}})

    {:reply, result, state}
  end

  @impl true
  def handle_info({_from, {:data, data}}, state) do
    case data do
      {:eol, tail} ->
        # complete buffered line part if required
        {new_state, msg} =
          if state.buffer == "" do
            {state, tail}
          else
            {struct(state, buffer: ""), state.buffer <> tail}
          end

        # resolve handler's pid
        handler_pid = Registry.get(state.name, :handler_pid)

        if handler_pid == nil do
          Logger.warning("#{state.name}: incoming message but no handler registered.")
        else
          # Forward msg to the client
          Kernel.send(handler_pid, {:ex_tdlib, msg})
        end

        {:noreply, new_state}

      {:noeol, part} ->
        # incomplete line, fill the buffer
        new_state = struct(state, buffer: state.buffer <> part)
        {:noreply, new_state}

      _ ->
        # This might happen if the port sends something unexpected
        Logger.error("Unknown input structure: #{inspect(data)}")
        {:noreply, state}
    end
  end

  @impl true
  def terminate(_reason, state) do
    if state.port do
      Port.close(state.port)
    end
  end
end
