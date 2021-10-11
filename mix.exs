defmodule Calq.MixProject do
  use Mix.Project

  def project do
    [
      app: :calq,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Calq.Application, []}
    ]
  end

  defp deps do
    [
      {:grpc, github: "elixir-grpc/grpc"},
      # {:gun, "~> 2.0.0", hex: :grpc_gun, override: true},
      {:cowlib, "~> 2.9.0", override: true}
    ]
  end
end
