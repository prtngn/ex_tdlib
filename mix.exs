defmodule TDLib.Mixfile do
  use Mix.Project

  def project do
    [
      app: :tdlib,
      compilers: [:elixir_make] ++ Mix.compilers(),
      deps: deps(),
      description: description(),
      docs: [main: "readme", extras: ["README.md"]],
      elixir: "~> 1.15",
      homepage_url: "https://github.com/prtngn/ex_tdlib",
      name: "TDLib",
      package: package(),
      source_url: "https://github.com/prtngn/ex_tdlib",
      start_permanent: Mix.env() == :prod,
      version: "0.0.4"
    ]
  end

  defp description do
    "Bindings over Telegram's TDLib, allowing to act as a full-fledged Telegram client."
  end

  defp package do
    [
      files: ["lib/tdlib*", "Makefile", "mix.exs", "README*", "LICENSE*", "CHANGELOG.*"],
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
      mod: {TDLib.Application, []},
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:elixir_make, "~> 0.4", runtime: false},
      {:ex_doc, "~> 0.31", only: :dev, runtime: false},
      {:poison, "~> 5.0"},
      {:styler, "~> 0.10", only: [:dev, :test], runtime: false},
      {:tdlib_json_cli,
       git: "https://github.com/oott123/tdlib-json-cli", branch: "nightly", submodules: true, app: false, compile: false}
    ]
  end
end
