defmodule ExTDLib.Nif do
  @moduledoc false

  @on_load :load_nif

  def load_nif do
    path = :code.priv_dir(:ex_tdlib)
    :erlang.load_nif(~c"#{Path.join(path, "tdjson_nif")}", 0)
  end

  def client_create do
    :erlang.nif_error(:nif_not_loaded)
  end

  def client_send(_client, _query), do: :erlang.nif_error(:nif_not_loaded)

  def client_receive(_client, _timeout), do: :erlang.nif_error(:nif_not_loaded)

  def client_execute(_client, _query), do: :erlang.nif_error(:nif_not_loaded)
end
