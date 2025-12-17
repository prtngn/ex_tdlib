defmodule ExTDLib.Adapter do
  @moduledoc """
  Behaviour for ExTDLib backend adapters.
  """

  @callback start_link(name :: atom(), opts :: keyword()) :: {:ok, pid()} | {:error, any()}
  @callback transmit(pid :: pid(), message :: String.t()) :: :ok | {:error, any()}
end
