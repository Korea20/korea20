defmodule Korea20.Mixfile do
  use Mix.Project

  def project do
    [app: :korea20,
     version: "0.0.1",
     elixir: "~> 0.15.2-dev",
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger],
     mod: {Korea20, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [{:cowboy,      "~> 1.0.0"},
     {:plug,        "~> 0.6.0"},
     {:unplug,      git: "https://github.com/manpages/plugplug.git",   branch: "master"},
     {:micromacro,  git: "https://github.com/manpages/micromacro.git", branch: "master"},
     {:gproc,       git: "https://github.com/uwiger/gproc",            branch: "master"},
    ]
  end
end
