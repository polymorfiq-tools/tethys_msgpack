defmodule TethysMsgpack.MixProject do
  use Mix.Project

  def project do
    [
      app: :tethys_msgpack,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      package: package(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    [
      description: "Adds MessagePack functionality to Tethys",
      links: %{"GitHub" => "https://github.com/polymorfiq-tools/tethys_msgpack"},
      licenses: ["AGPL-3.0-or-later"]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:tethys, "~> 0.1"},
      {:msgpax, "~> 2.0"}
    ]
  end
end
