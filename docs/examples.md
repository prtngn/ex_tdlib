# ExTDLib Examples

This guide provides examples of how to configure and use `ex_tdlib` to build a Telegram client or bot.

## Core Concepts

Interacting with `ex_tdlib` involves:

1.  **Defining Configuration**: Creating a `TdlibParameters` struct.
2.  **Creating a Handler**: A `GenServer` that receives updates from TDLib.
3.  **Opening a Session**: Calling `ExTDLib.open/4` with the config and handler.
4.  **Handling Auth Flow**: Responding to `Update.AuthorizationState` updates.

## 1. User Client (Connect with Phone Number)

This example demonstrates how to connect as a standard user, handling the 2FA flow (Phone -> Code -> Password).

### Handler Implementation

Your handler receives messages in `handle_info({:recv, msg}, state)`.

```elixir
defmodule MyClient.Handler do
  use GenServer
  require Logger

  # Start logic ...

  def handle_info({:recv, msg}, state) do
    handle_message(msg)
    {:noreply, state}
  end

  # --- Authorization Flow ---

  # 1. Provide Phone Number
  defp handle_message(%ExTDLib.Object.Update.AuthorizationState{authorization_state: %ExTDLib.Object.AuthorizationState.WaitPhoneNumber{}}) do
    Logger.info("Requesting phone number...")
    # In a real app, you might ask via UI or CLI. Here we assume we have it.
    ExTDLib.transmit(:my_session, %ExTDLib.Method.Set.AuthenticationPhoneNumber{
      phone_number: "+1234567890",
      settings: nil
    })
  end

  # 2. Provide Authentication Code
  defp handle_message(%ExTDLib.Object.Update.AuthorizationState{authorization_state: %ExTDLib.Object.AuthorizationState.WaitCode{}}) do
    Logger.info("Requesting code...")
    # Prompt user for code
    ExTDLib.transmit(:my_session, %ExTDLib.Method.Check.AuthenticationCode{code: "12345"})
  end

  # 3. Provide 2FA Password (if enabled)
  defp handle_message(%ExTDLib.Object.Update.AuthorizationState{authorization_state: %ExTDLib.Object.AuthorizationState.WaitPassword{password_hint: hint}}) do
    Logger.info("Requesting password (hint: #{hint})...")
    ExTDLib.transmit(:my_session, %ExTDLib.Method.Check.AuthenticationPassword{password: "secret"})
  end

  # 4. Ready!
  defp handle_message(%ExTDLib.Object.Update.AuthorizationState{authorization_state: %ExTDLib.Object.AuthorizationState.Ready{}}) do
    Logger.info("Successfully logged in!")
    ExTDLib.transmit(:my_session, %ExTDLib.Method.Get.Me{})
  end

  # --- Handling Other Messages ---

  defp handle_message(%ExTDLib.Object.User{} = user) do
    Logger.info("Logged in as #{user.first_name} (#{user.id})")
  end

  defp handle_message(%ExTDLib.Object.Update.NewMessage{message: message}) do
    Logger.info("New message: #{message.id}")
  end

  # Catch-all
  defp handle_message(_msg), do: :ok
end
```

### Configuration and Start

```elixir
api_id = System.get_env("TELEGRAM_API_ID")
api_hash = System.get_env("TELEGRAM_API_HASH")

config = %ExTDLib.Method.Set.TdlibParameters{
  api_id: api_id,
  api_hash: api_hash,
  database_directory: "/tmp/my_client_session",
  files_directory: "/tmp/my_client_session/files",
  use_test_dc: false,
  use_file_database: true,
  use_chat_info_database: true,
  use_message_database: true,
  system_language_code: "en",
  device_model: "Desktop",
  system_version: "macOS",
  application_version: "1.0.0"
}

{:ok, handler_pid} = MyClient.Handler.start_link([])
ExTDLib.open(:my_session, handler_pid, config)
```

## 2. Bot Client (Connect with Token)

Connecting as a bot is simpler; you only need to provide the token when `WaitPhoneNumber` (or typical start state) is reached.

### Handler Implementation

```elixir
defmodule MyBot.Handler do
  use GenServer
  require Logger

  # ... init/handle_info ...

  defp handle_message(%ExTDLib.Object.Update.AuthorizationState{authorization_state: %ExTDLib.Object.AuthorizationState.WaitPhoneNumber{}}) do
    # For bots, we send CheckAuthenticationBotToken instead of phone number
    ExTDLib.transmit(:bot_session, %ExTDLib.Method.Check.AuthenticationBotToken{
      token: System.get_env("TELEGRAM_BOT_TOKEN")
    })
  end

  defp handle_message(%ExTDLib.Object.Update.AuthorizationState{authorization_state: %ExTDLib.Object.AuthorizationState.Ready{}}) do
    Logger.info("Bot authorized!")
  end
  
  defp handle_message(_), do: :ok
end
```

## 3. Multiple Sessions

You can open multiple sessions (e.g., multiple bots or users) by providing different session names and database directories.

```elixir
ExTDLib.open(:session_1, handler1, config1)
ExTDLib.open(:session_2, handler2, config2)
```

## 4. Adapter Selection

You can choose between the NIF adapter (faster, requires compilation) and the CLI adapter (requires `tdlib-json-cli` binary).

- **Environment Variable**: Set `TDLIB_ADAPTER=nif` or `TDLIB_ADAPTER=json`.
- **Code**: Pass `adapter: ExTDLib.Adapter.Nif` to `open/4` opts (if using internal APIs directly) or rely on the env var logic in `ExTDLib.open/4`.
