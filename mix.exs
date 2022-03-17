defmodule Lilly.MixProject do
  use Mix.Project

  @source_url ""
  @version "0.1.0"

  def project do
    [
      app: :lilly,
      version: @version,
      elixir: "~> 1.12",
      elixirc_paths: elixirc_paths(Mix.env()) ++ catalogues(),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      compilers: [:phoenix] ++ Mix.compilers() ++ [:surface],
      package: package(),
      aliases: aliases()
    ]
  end

  def package do
    [
      files: ["lib", "mix.exs", "README*", "priv"],
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url}
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(:dev), do: ["lib"] ++ catalogues()
  defp elixirc_paths(_), do: ["lib"]

  def catalogues do
    [
      "deps/surface/priv/catalogue",
      "priv/catalogue"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:surface, "~> 0.7.1"},
      {:surface_catalogue, "~> 0.4.0", only: [:dev, :test]},
      {:credo, "> 0.0.0", only: :dev},
      {:phoenix_html, "~> 3.2.0"},
      {:phoenix_live_view, "~> 0.17.0", optional: true},
      {:jason, "~> 1.3"},
      {:tailwind, "~> 0.1", runtime: Mix.env() == :dev},
      {:surface_formatter, "~> 0.6.0"}
    ]
  end

  defp aliases do
    [
      dev: "run --no-halt dev.exs"
    ]
  end
end
