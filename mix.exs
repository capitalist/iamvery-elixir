defmodule Iamvery.MixProject do
  use Mix.Project

  @description """
  A set of Elixir utilities for myself and others. Using this Hex package as a
  test bed for ideas that may be eventually spun off as separate projects or
  open source contributions.
  """

  @package [
    files: ["lib", "mix.exs", "README*"],
    maintainers: ["Jay Hayes"],
    licenses: ["MIT"],
    links: %{"GitHub" => "https://github.com/iamvery/iamvery-elixir"}
  ]

  def project do
    [
      app: :iamvery,
      version: "0.6.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      description: @description,
      package: @package,
      deps: deps()
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
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
