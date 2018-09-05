defmodule IPFSApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :ipfs_api_ex,
      version: "0.1.0",
      elixir: "~> 1.7",
      description: "Elixir wrapper for the IPFS REST Api",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: [
        maintainers: [
          "Anton Zhuravlev <anton@pallium.network>",
        ],
        links: %{"GitHub" => "https://github.com/neocortexlab/ipfs-api-ex"}
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:tesla]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:tesla, "~> 1.0.0"},
      {:jason, ">= 1.0.0"}
    ]
  end
end
