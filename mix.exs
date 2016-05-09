defmodule Qiniu.Mixfile do
  use Mix.Project

  @version "0.2.2"

  def project do
    [app: :qiniu,
     version: @version,
     elixir: "~> 1.2",
     deps: deps,

     # Hex
     description: description,
     package: package
    ]
  end

  def application do
    [applications: [:logger, :httpoison]]
  end

  defp deps do
    [{:poison, "~> 2.1"},
     {:httpoison, "~> 0.8.3"},
     {:ex_doc, "~> 0.11.3", only: :docs},
     {:earmark, "~> 0.2.0", only: :docs},
     {:inch_ex, "~> 0.5.1", only: :docs},
     {:mock, "~> 0.1.0", only: :test}
    ]
  end

  defp description do
    "Qiniu Resource (Cloud) Storage SDK for Elixir"
  end

  defp package do
    [maintainers: ["Tony Han"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/tony612/qiniu"},
     files: ~w(mix.exs README.md CHANGELOG.md lib config)]
  end

end
