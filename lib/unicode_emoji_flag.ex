defmodule UnicodeEmojiFlag do
  @moduledoc """
  Convert country codes to emoji flags 🔡 ➡️ 🇹🇼.
  For the list of available country codes please refer to https://en.wikipedia.org/wiki/Regional_indicator_symbol#Emoji_flag_sequences
  """

  @doc """
  Takes two or more characters-long country code and produces an HTML-ready hexadecimal representation of its flag.

  For example in your Phoenix template `<%= raw(UnicodeEmojiFlag.html("tw")) %>`
  """
  @spec html(binary()) :: binary() | {:error, binary()}
  def html(country_code) when byte_size(country_code) < 2 do
    {:error, "Country code should be at least two characters long"}
  end

  def html("uk") do
    html("gb")
  end

  def html(country_code) when is_binary(country_code) do
    codes = %{
      "a" => "1F1E6",
      "b" => "1F1E7",
      "c" => "1F1E8",
      "d" => "1F1E9",
      "e" => "1F1EA",
      "f" => "1F1EB",
      "g" => "1F1EC",
      "h" => "1F1ED",
      "i" => "1F1EE",
      "j" => "1F1EF",
      "k" => "1F1F0",
      "l" => "1F1F1",
      "m" => "1F1F2",
      "n" => "1F1F3",
      "o" => "1F1F4",
      "p" => "1F1F5",
      "q" => "1F1F6",
      "r" => "1F1F7",
      "s" => "1F1F8",
      "t" => "1F1F9",
      "u" => "1F1FA",
      "v" => "1F1FB",
      "w" => "1F1FC",
      "x" => "1F1FD",
      "y" => "1F1FE",
      "z" => "1F1FF"
    }

    country_code
    |> String.split("", trim: true)
    |> Enum.map(&"&#x#{codes[&1]};")
    |> Enum.join()
  end
end
