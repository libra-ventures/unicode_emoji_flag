defmodule UnicodeEmojiFlag.MixProject do
  use Mix.Project

  def project do
    [
      app: :unicode_emoji_flag,
      version: "1.1.0",
      elixir: ">= 1.0.0",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      name: "UnicodeEmojiFlag",
      source_url: "https://github.com/libra-ventures/unicode_emoji_flag"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description do
    """
    Converts a country code to emoji flag. Most flags use a 2-letter code, but some use more (eg England=gbeng, Scotland=gbsct, Wales=gbwls, etc).
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Yevhenii Kurtov"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/libra-ventures/unicode_emoji_flag"}
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.22", only: :dev, runtime: false}
    ]
  end
end
