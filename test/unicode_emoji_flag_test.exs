defmodule UnicodeEmojiFlagTest do
  use ExUnit.Case

  test "country code should be at least two characters long" do
    assert {:error, "Country code should be at least two characters long"} =
             UnicodeEmojiFlag.html("a")
  end

  test "convert uk to gb" do
    assert UnicodeEmojiFlag.html("uk") == UnicodeEmojiFlag.html("gb")
  end

  test "returns valid code for Taiwan 🇹🇼" do
    assert UnicodeEmojiFlag.html("tw") == "&#x1F1F9;&#x1F1FC;"
  end
end
