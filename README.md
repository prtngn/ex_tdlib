# Elixir TDLib

Elixir bindings for [Telegram's TDLib](https://core.telegram.org/tdlib).

Allows you to interact with Telegram as a full-fledged client. Supports multiple sessions (workers) and provides two execution modes:

- **NIF Adapter (Recommended)**: Loads `libtdjson` directly into the BEAM for high performance and low latency.
- **Port Adapter**: Runs `tdlib-json-cli` as a separate process via standard IO.

Interactions are primarily handled via `ExTDLib.Session` and generated `ExTDLib.Method` modules.

## One-step Configuration (Recommended)

`ex_tdlib` is now designed to be a self-contained dependency.

1.  **Add dependency**:
    ```elixir
    {:ex_tdlib, git: "https://github.com/prtngn/ex_tdlib"}
    ```

2.  **Run `mix compile`**:
    -   It will automatically download and compile `tdlib` from source if not found.
    -   It will regenerate the Elixir types to match the compiled library.

3.  **Run with NIF adapter**:
    ```bash
    TDLIB_ADAPTER=nif mix run
    ```

### Advanced Configuration (Optional)

You can optimize the build time by providing an existing `tdlib` installation via environment variables:

-   `TDLIB_PATH`: Path to tdlib installation (must contain `lib/` and `include/`).
-   `TDLIB_IDL_PATH`: Path to `td_api.tl` (defaults to looking inside `TDLIB_PATH` or `priv/td`).

**Adapters:**

-   **NIF (Default/Recommended)**: High performance, direct memory access.
-   **JSON CLI**: Legacy mode using `tdlib-json-cli`. Set `TDLIB_ADAPTER=json` and configure `TDLIB_JSON_CLI_PATH`.

## Documentation

-   [Examples and Usage Guide](docs/examples.md)
-   [ExTDLib Module Docs](https://hexdocs.pm/ex_tdlib)

## Configuration

```elixir
# Optional: specific path to tdlib-json-cli if using legacy adapter
config :ex_tdlib, backend_binary: "/path/to/binary"
```




## Usage / Example

A simple example can be found at
[https://github.com/prtngn/ex_telegram](https://github.com/prtngn/ex_telegram).
Please refer to the `ExTDLib` module for proper documentation.

## License

This project is licensed under the GNU Affero General Public License v3.0 (AGPL-3.0).

### Dependencies

* [Telegram's tdlib](https://github.com/tdlib/td) - Boost Software License 1.0 (BSL-1.0)
* [oott123's tdlib-json-cli](https://github.com/oott123/tdlib-json-cli) - GNU Affero General Public License v3.0 (AGPL-3.0)
