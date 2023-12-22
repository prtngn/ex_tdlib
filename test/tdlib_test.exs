defmodule TDLibTest do
  use ExUnit.Case

  alias TDLib.Method
  alias TDLib.Object
  alias TDLib.Object.UpdateAuthorizationState
  alias TDLib.Session.Registry

  doctest TDLib

  @session :testsession

  test "The truth" do
    assert 1 == 1
  end

  test "Session management" do
    # Ensure the registry is empty
    assert Enum.count(Registry.dump()) == 0

    # Open a new session
    {:ok, _pid} = TDLib.open(@session, self(), TDLib.default_config())

    assert wait_for_authstate() == "authorizationStateWaitTdlibParameters"
    assert Enum.count(Registry.dump()) == 1
    assert @session |> Registry.get() |> Map.get(:client_pid) == self()

    # Close the session
    TDLib.close(@session)

    # Ensure the registry is empty again
    assert Enum.count(Registry.dump()) == 0
  end

  @tag :manual
  @tag timeout: :infinity
  # Run with `mix test --only manual`
  test "Telegram login" do
    {api_id, _} = "Please provide API id: " |> IO.gets() |> Integer.parse()
    api_hash = "Please provide API hash: " |> IO.gets() |> String.trim()

    config =
      struct(
        TDLib.default_config(),
        %{api_id: api_id, api_hash: api_hash}
      )

    # Open a new session
    {:ok, _pid} = TDLib.open(@session, self(), config)

    assert wait_for_authstate() == "authorizationStateWaitTdlibParameters"

    case wait_for_authstate() do
      "authorizationStateReady" ->
        :ok

      "authorizationStateWaitPhoneNumber" ->
        phone_number = "Please provide phone number: " |> IO.gets() |> String.trim()

        query = %Method.SetAuthenticationPhoneNumber{
          phone_number: phone_number,
          settings: %Object.PhoneNumberAuthenticationSettings{
            allow_flash_call: false
          }
        }

        TDLib.transmit(@session, query)

        assert wait_for_authstate() == "authorizationStateWaitCode"

        code = "Please authentication code: " |> IO.gets() |> String.trim()
        query = %Method.CheckAuthenticationCode{code: code}
        TDLib.transmit(@session, query)

        # If you account is protected with 2FA, you will be asked for a password
        # assert wait_for_authstate() == "authorizationStateWaitPassword"
        # password = "Please password: " |> IO.gets() |> String.trim()
        # query = %Method.CheckAuthenticationPassword{password: password}
        # TDLib.transmit(@session, query)

        assert wait_for_authstate() == "authorizationStateReady"

      # ^ The user has been successfully authorized. TDLib is now ready to answer
      # queries.
      other_state ->
        raise("Unexpected #{other_state} received")
    end

    # Close
    TDLib.close(@session)
  end

  ###

  defp wait_for(struct, timeout \\ 2_000) do
    receive do
      {:recv, msg} ->
        if Map.get(msg, :__struct__) == struct do
          msg
        else
          wait_for(struct, timeout)
        end
    after
      timeout -> :timeout
    end
  end

  defp wait_for_authstate do
    UpdateAuthorizationState
    |> wait_for()
    |> Map.get(:authorization_state)
    |> Map.get(:"@type")
  end
end
