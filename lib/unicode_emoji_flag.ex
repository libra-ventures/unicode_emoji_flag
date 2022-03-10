defmodule UnicodeEmojiFlag do
  @moduledoc """
  Convert country codes to emoji flags 🔡 ➡️ 🇹🇼.
  For the list of available country codes please refer to https://en.wikipedia.org/wiki/Regional_indicator_symbol#Emoji_flag_sequences
  """

  @codes %{
    "a" => 0x1F1E6,
    "b" => 0x1F1E7,
    "c" => 0x1F1E8,
    "d" => 0x1F1E9,
    "e" => 0x1F1EA,
    "f" => 0x1F1EB,
    "g" => 0x1F1EC,
    "h" => 0x1F1ED,
    "i" => 0x1F1EE,
    "j" => 0x1F1EF,
    "k" => 0x1F1F0,
    "l" => 0x1F1F1,
    "m" => 0x1F1F2,
    "n" => 0x1F1F3,
    "o" => 0x1F1F4,
    "p" => 0x1F1F5,
    "q" => 0x1F1F6,
    "r" => 0x1F1F7,
    "s" => 0x1F1F8,
    "t" => 0x1F1F9,
    "u" => 0x1F1FA,
    "v" => 0x1F1FB,
    "w" => 0x1F1FC,
    "x" => 0x1F1FD,
    "y" => 0x1F1FE,
    "z" => 0x1F1F
  }

  @doc """
  Takes two or more characters-long country code and produces an HTML-ready hexadecimal representation of its flag.

  For example in your Phoenix template `<%= raw(UnicodeEmojiFlag.html("tw")) %>`
  """
  @spec html(binary()) :: binary() | {:error, binary()}
  def html(country_code) do
    case translated = translate(country_code) do
      {:error, error} ->
        {:error, error}

      _ ->
        translated
        |> Enum.map(&"&##{@codes[&1]};")
        |> Enum.join()
    end
  end

  @doc """
  Takes two or more characters-long country code and produces a sequence ready to be printed on a terminal.

  For example `IO.puts UnicodeEmojiFlag.console("tw")`
  """
  @spec console(binary()) :: binary() | {:error, binary()}
  def console(country_code) do
    case translated = translate(country_code) do
      {:error, error} ->
        {:error, error}

      _ ->
        translated
        |> Enum.map(&@codes[&1])
        |> List.to_string()
    end
  end

  defp translate(country_code) when byte_size(country_code) < 2 do
    {:error, "Country code should be at least two characters long"}
  end

  defp translate("uk") do
    translate("gb")
  end

  defp translate(country_code) when is_binary(country_code) do
    country_code
    |> String.split("", trim: true)
  end
end
