# UnicodeEmojiFlag

[![License](http://img.shields.io/:license-apache-blue.svg)](http://www.apache.org/licenses/LICENSE-2.0.html)
[![Hex.pm](https://img.shields.io/hexpm/v/unicode_emoji_flag.svg)](https://hex.pm/packages/unicode_emoji_flag)
[![Build Docs](https://img.shields.io/badge/hexdocs-release-blue.svg)](https://hexdocs.pm/unicode_emoji_flag/UnicodeEmojiFlag.html)

**This is Elixir adaptation of the splendid [Country Code 🔡 ➡️ Emoji Flag 🇬🇧](https://github.com/peterkahl/country-code-to-emoji-flag)**

_Readme is copy-pasted as well :P_

 Converts a country code to emoji flag. Most flags use a 2-letter code, but some use more (eg England=gbeng, Scotland=gbsct, Wales=gbwls, etc).

## Why Emoji❓
Emoji symbol is a textual replacement for a graphic image file while having the benefits of a graphic image. The image file is already present at your intended destination (a person's device), so why would you transmit the image to them again and again? -- Use emoji!

## ♻️Green Technology♻️
An image file equivalent to an emoji symbol may be tens, hundreds of kilobytes in size, while an emoji symbol is only several bytes. That's a bandwidth saving of around 10,000 times. If you use emoji instead of image files, you reduce your carbon footprint.

## Plain Text Is Now 😎Faux Rich Text
Now you can include emoji in plain text files, even in plain text emails, making them sharp, colourful and rich looking. You can put emoji flags into your database too!

## Emoji support: 🖥platform- and 🌍location-dependent‼️
Not every platform supports emoji. Therefore, use with caution! To my knowledge, iOS, macOS, Android are capable of displaying emoji. Additionally, some platforms (or geographical regions) may not be able to display certain flags. If unsure, use this as a reference and easy way to test your platform: <http://unicode.org/emoji/charts/full-emoji-list.html>


## Installation

To use UnicodeEmojiFlag in your Mix projects, added it is a dependency in `mix.exs`:

```elixir
def deps do
  [
    {:unicode_emoji_flag, "~> 1.0"}
  ]
end
```

## Usage

### HTML

  `UnicodeEmojiFlag.html` takes two characters-long country code and produces an HTML-ready hexadecimal representation of its flag.

  For example in your Phoenix template `<%= raw(UnicodeEmojiFlag.html("tw")) %>`
