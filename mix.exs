defmodule ExTDLib.Mixfile do
  use Mix.Project

  # Ensure the custom compiler is loaded
  if File.exists?("lib/mix/tasks/compile.generate_td_types.ex") do
    Code.require_file("lib/mix/tasks/compile.generate_td_types.ex")
  end

  def project do
    [
      app: :ex_tdlib,
      deps: deps(),
      description: description(),
      docs: [main: "readme", extras: ["README.md"]],
      dialyzer: [
        plt_add_apps: ~w(jason mix)a
      ],
      compilers: [:elixir_make, :generate_td_types] ++ Mix.compilers(),
      make_clean: ["clean"],
      make_cwd: ".",
      make_env: make_env(),
      elixir: "~> 1.19",
      homepage_url: "https://github.com/prtngn/ex_tdlib",
      name: "ExTDLib",
      package: package(),
      source_url: "https://github.com/prtngn/ex_tdlib",
      start_permanent: Mix.env() == :prod,
      version: "0.1.0"
    ]
  end

  defp description do
    "Bindings over Telegram's TDLib, allowing to act as a full-fledged Telegram client."
  end

  defp package do
    [
      name: "ex_tdlib",
      files: ~w(lib src .formatter.exs mix.exs README* LICENSE* CHANGELOG.* Makefile),
      maintainers: ["Timothée Floure", "Maxim Portnyagin"],
      licenses: ["AGPL-3.0"],
      links: %{
        "Sources" => "https://github.com/prtngn/ex_tdlib",
        "Bug Tracker" => "https://github.com/prtngn/ex_tdlib",
        "Telegram TDLib" => "https://core.telegram.org/tdlib"
      }
    ]
  end

  def application do
    [
      mod: {ExTDLib.Application, []},
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:credo, ">= 0.0.0", only: [:dev], runtime: false},
      {:dialyxir, ">= 0.0.0", only: [:dev], runtime: false},
      {:ex_doc, "~> 0.31", only: :dev, runtime: false},
      {:jason, "~> 1.4"},
      {:mix_audit, ">= 0.0.0", only: [:dev], runtime: false},
      {:styler, "~> 1.10", only: [:dev, :test], runtime: false},
      {:elixir_make, "~> 0.8", runtime: false}
    ]
  end

  defp make_env do
    %{
      "TDLIB_INCLUDE_PATH" => System.get_env("TDLIB_INCLUDE_PATH"),
      "TDLIB_LIB_PATH" => System.get_env("TDLIB_LIB_PATH"),
      "TDLIB_PATH" => System.get_env("TDLIB_PATH"),
      "TDLIB_ADAPTER" => System.get_env("TDLIB_ADAPTER"),
      "TDLIB_JSON_CLI_PATH" => System.get_env("TDLIB_JSON_CLI_PATH")
    }
    |> Enum.reject(fn {_, v} -> is_nil(v) end)
    |> Map.new()
  end
end
