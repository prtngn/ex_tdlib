defmodule ExTDLib.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      {ExTDLib.Session.Registry, []}
    ]

    opts = [strategy: :one_for_one, name: ExTDLib.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
