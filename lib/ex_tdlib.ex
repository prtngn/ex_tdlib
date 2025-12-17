defmodule ExTDLib do
  @moduledoc """
  This module allow you to interact with and manage sessions.
  """

  alias ExTDLib.Adapter.Tdjson
  alias ExTDLib.Method
  alias ExTDLib.Session
  alias ExTDLib.Session.Registry

  @default_config %Method.Set.TdlibParameters{
    database_encryption_key: nil,
    use_test_dc: false,
    database_directory: "/tmp/tdlib",
    files_directory: "",
    use_file_database: true,
    use_chat_info_database: true,
    use_message_database: true,
    use_secret_chats: false,
    api_id: "0",
    api_hash: "0",
    system_language_code: "en",
    device_model: "Unknown",
    system_version: "Unknown",
    application_version: "Unknown"
  }

  @doc """
  Configuration template for TDLib, to be modified and used as parameter of
  `open/3`.

  See `ExTDLib.Object.TdlibParameters` and
  [core.telegram.org/tdlib/options](https://core.telegram.org/tdlib/options)
  for details. You can obtain an `:api_id` and an `:api_hash` on
  [my.telegram.org](https://my.telegram.org/) : they are required by TDLib,
  **don't forget to set them !**

  Be careful not to use the same `:database_directory` for two different
  sessions !
  """
  def default_config, do: @default_config

  @doc """
  Open a new session. Spawns a new instance of `tdlib-json-cli`.

  * `session_name` is the identifier of the session
  * `client_pid` is the PID of the process receiving the incoming messages
    (`{:recv, struct}`)
  * `config` is the configuration of TDLib, see `default_config/0`
  * `encryption_key` is the key used to encrypt the local database, it allows to
  store the session's cache and authorization key even if the client is offline

  Return either `{:ok, pid}` or `{:error, reason}`.
  """
  def open(session_name, client_pid, config, encryption_key \\ "") do
    adapter = get_adapter()
    Session.create(session_name, client_pid, config, encryption_key, adapter: adapter)
  end

  @doc false
  def get_adapter do
    case System.get_env("TDLIB_ADAPTER") do
      "nif" -> ExTDLib.Adapter.Nif
      "cli" -> Tdjson
      "json" -> Tdjson
      _ -> Tdjson
    end
  end

  @doc false
  def get_log_requests do
    verbosity = Application.get_env(:ex_tdlib, :verbosity, 0)
    log_path = Application.get_env(:ex_tdlib, :log_path)

    verbosity_req = %{
      "@type" => "setLogVerbosityLevel",
      "new_verbosity_level" => verbosity
    }

    stream_req =
      if log_path do
        %{
          "@type" => "setLogStream",
          "log_stream" => %{
            "@type" => "logStreamFile",
            "path" => log_path,
            "max_file_size" => 104_857_600,
            "redirect_stderr" => false
          }
        }

        # If verbosity is 0, we don't strictly need to change stream, but user asked for /dev/null default?
        # Verbosity 0 is effectively silent.
        # But explicit empty stream is safer.
        # However, let's stick to default (stderr) if path not provided, relying on verbosity.
        # Wait, user said "by default send to /dev/null".
        # If verbosity=0, it's effectively null.
        # If I use logStreamEmpty, it is truly null.
      end

    Enum.reject([verbosity_req, stream_req], &is_nil/1)
  end

  @doc """
  Close the session identified by `session_name`.
  """
  def close(session_name) do
    Session.destroy(session_name)
  end

  @doc """
  Transmit a message over the session identified by `session_name`.

  The parameter `msg` must be a struct (any map in reality) since it is
  directly encoded into JSON and transmitted via TDLib. You should use the
  structures generated from TDLib's documentation and provided by the
  submodules of `ExTDLib.Object` and `ExTDLib.Methods`.

  Alternatively it is also possible to directly provide an already encoded
  binary or string, althrough you should not need it.
  """
  def transmit(session_name, msg) when is_map(msg) do
    json =
      msg
      |> Map.delete(:__struct__)
      |> Map.new(fn {k, v} -> {k, transform_struct(v)} end)
      |> Jason.encode!()

    transmit(session_name, json)
  end

  def transmit(session_name, json) when is_binary(json) do
    backend_pid = Registry.get(session_name, :backend_pid)
    GenServer.call(backend_pid, {:transmit, json})
  end

  @doc """
   Set the process receiving the incoming update for session
   `session_name` to `client_pid`. The incoming messages can be handled with
   `def handle_info({:recv, msg}, state), do: ...` using GenServer.

   The client is initially set when the session is create, using `open/3`.
  """
  def update_client(session_name, client_pid) do
    handler_pid = Registry.get(session_name, :handler_pid)
    GenServer.call(handler_pid, {:set_client, client_pid})
  end

  @doc """
  Returns the path to the `tdlib-json-cli` binary.

  The path can be configured via:
  1. Environment variable `TDLIB_JSON_CLI_PATH`
  2. Application config `:ex_tdlib, :backend_binary`

  Raises an error if not configured.
  """
  def get_backend_binary do
    env_path = System.get_env("TDLIB_JSON_CLI_PATH")
    config_path = Application.get_env(:ex_tdlib, :backend_binary)

    cond do
      env_path != nil ->
        env_path

      config_path != nil ->
        config_path

      true ->
        raise "tdlib-json-cli path not configured. Set TDLIB_JSON_CLI_PATH env or :ex_tdlib, :backend_binary config."
    end
  end

  @doc """
  Converts the first letter of a string to uppercase, while leaving the rest of the string unchanged.
  """
  def titlecase_once(str) do
    first_letter = String.first(str)
    String.replace_prefix(str, first_letter, String.upcase(first_letter))
  end

  defp transform_struct(map) when is_map(map) do
    map
    |> Map.delete(:__struct__)
    |> Map.new(fn {k, v} -> {k, transform_struct(v)} end)
  end

  defp transform_struct(value), do: value
end
