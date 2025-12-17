defmodule ExTDLib.Application do
  @moduledoc false

  use Application

  alias ExTDLib.Adapter.Nif

  def start(_type, _args) do
    # If using NIF adapter, we can configure logging globally on startup.
    # For CLI adapter, we must do it per session.
    if ExTDLib.get_adapter() == Nif do
      Enum.each(ExTDLib.get_log_requests(), fn req ->
        json = Jason.encode!(req)
        ExTDLib.Nif.client_execute(nil, json)
      end)
    end

    children = [
      {ExTDLib.Session.Registry, []},
      {ExTDLib.Session.Supervisor, []}
    ]

    opts = [strategy: :one_for_one, name: ExTDLib.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
