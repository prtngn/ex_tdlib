defmodule ExTDLib.Session do
  @moduledoc false

  use Supervisor

  alias ExTDLib.Session
  alias ExTDLib.Session.Registry

  defstruct [:name, :config, :supervisor_pid, :backend_pid, :handler_pid, :client_pid, :encryption_key]

  def start_link(name) do
    Supervisor.start_link(__MODULE__, name, [])
  end

  def init(name) do
    Registry.update(name, supervisor_pid: self())

    children = [
      {ExTDLib.Backend, name},
      {ExTDLib.Handler, name}
    ]

    opts = [strategy: :one_for_one]
    Supervisor.init(children, opts)
  end

  def create(name, client, config, encryption_key) do
    # Initialize the new session in the registry
    state = %Session{
      config: config,
      client_pid: client,
      encryption_key: encryption_key
    }

    Registry.set(name, state)

    # Try to start the session
    {status, output} = start_link(name)

    # Remove from registry if the creation failed
    unless status == :ok, do: Registry.drop(name)

    {status, output}
  end

  def destroy(name) do
    session = Registry.get(name)
    Supervisor.stop(session.supervisor_pid, :normal)
    Registry.drop(name)
  end
end
