defmodule UnicodeEmojiFlag.MixProject do
  use Mix.Project

  def project do
    [
      app: :unicode_emoji_flag,
      version: "1.0.0",
      elixir: ">= 1.0.0",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      source_url: "https://github.com/libra-ventures/unicode_emoji_flag"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.22", only: :dev, runtime: false}
    ]
  end
end
