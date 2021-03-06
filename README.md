# UnicodeEmojiFlag 🇹🇼

[![License](https://img.shields.io/badge/license-0bsd-blue)](https://spdx.org/licenses/0BSD.html)
[![Hex.pm](https://img.shields.io/hexpm/v/unicode_emoji_flag.svg)](https://hex.pm/packages/unicode_emoji_flag)
[![Build Docs](https://img.shields.io/badge/hexdocs-release-blue.svg)](https://hexdocs.pm/unicode_emoji_flag/UnicodeEmojiFlag.html)

**Inspired by splendid [Country Code 🔡 ➡️ Emoji Flag 🇬🇧](https://github.com/peterkahl/country-code-to-emoji-flag) library**

I let myself quote a part of their equally excellent README

> ## ♻️Green Technology♻️
> An image file equivalent to an emoji symbol may be tens, hundreds of kilobytes in size, while an emoji symbol is only several bytes. That's a bandwidth saving of around 10,000 times. If you use emoji instead of image files, you reduce your carbon footprint.


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

### Console

  `UnicodeEmojiFlag.console` takes two characters-long country code and produces a Unicode sequence ready to be printed to a terminal

## Acknowledgments

Thanks to folks at Elixir Slack helping out with nailing down printing Unicode sequences to a terminal - @micahbf,
@di4na, Jaxon Axelson and @lostkobrakai
