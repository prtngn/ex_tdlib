defmodule TDLib.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      {TDLib.Session.Registry, []}
    ]

    opts = [strategy: :one_for_one, name: TDLib.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
