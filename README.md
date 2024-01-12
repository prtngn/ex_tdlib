# Elixir TDLib

This elixir library binds [telegram's
TDLib](https://core.telegram.org/tdlib), allowing you to interact with
Telegram as a full-fledged client (not as a bot!). It ships :

* [Telegram's tdlib](https://github.com/tdlib/td), licensed under the Boost
  Software License 1.0 (BSL-1.0)
* [oott123's tdlib-json-cli](https://github.com/oott123), licensed under the
  GNU Affero General Public License v3.0 (AGPL-3.0)

Most of the interactions with this project are done via the `ExTDLib` module. Any
structure used to interact with TDLib is defined under either `ExTDLib.Object` or
`ExTDLib.Method`. You can create as many session as you want, but note that each
of them launch a new instance of tdlib-json-cli via a
[port](https://hexdocs.pm/elixir/Port.html).

# Installation

Add the following to your `mix.exs` :

```elixir
def deps do
  [{:ex_tdlib, git: "https://github.com/prtngn/ex_tdlib.git"}]
end
```

#### MacOS users:
Run `mix deps.get` and after go to `deps/tdlib_json_cli` and fix `CMakeLists.txt`.
Remove `set(CMAKE_EXE_LINKER_FLAGS " -static")` and `target_link_libraries` set to `tdlib_json_cli Td::TdJsonStatic`

Note that compiling this project will compile Telegram's TDLib (C++) itself,
it's going to take a while and needs some depends. You can get more info here: [tdlib-json-cli repo](https://github.com/oott123/tdlib-json-cli)


# Configuration

This library **does not need** configuration, however, the following options are
available :

```elixir
# Disable automatic handling of authentification and directly forward the
# incoming messages to the client
config :ex_tdlib, disable_handling: false

# Override default path of the telegram-json-cli binary
config :ex_tdlib, backend_binary: "/path/to/my/binary"
```

# Usage / Example

A simple example can be found at
[https://github.com/prtngn/ex_telegram](https://github.com/prtngn/ex_telegram).
Please refer to the `ExTDLib` module for proper documentation.
