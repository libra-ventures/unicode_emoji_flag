defmodule UnicodeEmojiFlagTest do
  use ExUnit.Case

  describe "UnicodeEmojiFlag.html/1" do
    test "valdiates country code length" do
      assert {:error, "Country code should be at least two characters long"} = UnicodeEmojiFlag.html("a")
    end

    test "converts uk to gb" do
      assert UnicodeEmojiFlag.html("uk") == "&#127468;&#127463;"
    end

    test "returns valid code for Taiwan 🇹🇼" do
      assert UnicodeEmojiFlag.html("tw") == "&#127481;&#127484;"
    end
  end

  describe "UnicodeEmojiFlag.console/1" do
    test "valdiates country code length" do
      assert {:error, "Country code should be at least two characters long"} = UnicodeEmojiFlag.console("a")
    end

    test "converts uk to gb" do
      assert UnicodeEmojiFlag.console("uk") == "\u{1F1EC}\u{1F1E7}"
    end

    test "returns valid code for Taiwan 🇹🇼" do
      assert UnicodeEmojiFlag.console("tw") == "\u{1F1F9}\u{1F1FC}"
    end
  end
end
