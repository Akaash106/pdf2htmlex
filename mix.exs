defmodule Pdf2htmlex.Mixfile do
  use Mix.Project

  def project do
    [
     app: :pdf2htmlex,
     version: "0.1.0",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package
     deps: deps
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp description do
    """
    Convert PDF docs to beautiful HTML files without losing text or format.
    """
  end

  defp deps do
    [
      {:secure_random, "~> 0.1"},
      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc, "~> 0.7", only: :dev}
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      contributors: ["Richard Nyström"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/ricn/pdf2htmlex", "Docs" => "http://hexdocs.pm/pdf2htmlex"}
    ]
  end
end
