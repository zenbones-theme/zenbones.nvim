# Zenbones

Zenbones is a light vim/nvim colorscheme designed to highlight code using
contrasts and font variations. Colors are tasked only for other roles such as
diagnostics, diffs, search matches.

![Zenbones main image](https://user-images.githubusercontent.com/7200153/131045472-05c76909-0071-4c24-bd30-f15da3ae4e82.jpg)

<p align="center">
<em>A rock garden in <a href="https://en.wikipedia.org/wiki/Ry%C5%8Dan-ji">Ryōan-ji</a>.</em>
</p>

## Requirements

Primarily built for nvim but it works pretty well with vim. However here are
some requirements to take full advantage of the colorscheme:

- 24-bit RGB colors (nvim or vim compiled with +termguicolors)
- Font with bold and italic
- Terminal or GUI with bold and italic support

## Installation

Example installation using packer:

```lua
use "mcchrish/zenbones.nvim"

-- Optionally install Lush. Useful if you want to extend the theme
-- e.g. create a statusline plugin theme using zenbones colors
use "rktjmp/lush.nvim"
-- See Advanced Usage section for more details
```

## Usage

Just apply the colorscheme as usual:

```vim
set termguicolors
colorscheme zenbones
```

Alternatively, if you want to make use of the lua version:

```vim
set termguicolors
colorscheme zenbones-lush
```

It works pretty much the same as the first one but pretty handy when extending
or customizing the colors to your likings.

## Showcase

<details>
    <summary>Diff highlights</summary>

<img width="1128" alt="Vim diff" src="https://user-images.githubusercontent.com/7200153/130730698-38c2f493-4161-4146-bb68-00cd9a87d2bd.png">

</details>
 
<details>
    <summary>Search</summary>

<img width="1128" alt="Search" src="https://user-images.githubusercontent.com/7200153/130731292-928fcffc-c252-425c-8c61-e292df3fa478.png">

</details>

<details>
    <summary>Diagnostics</summary>

<img width="1128" alt="Diagnostics" src="https://user-images.githubusercontent.com/7200153/130927693-00cd8a6e-7a75-4ebb-9f23-b9322de7933a.png">

</details>

_Font used is [Iosevka Curly Slab](https://typeof.net/Iosevka/)_.

## Other plugins support

Aside from LSP and basic Tree-sitter support, there are only a few plugins that
are currently supported. Please feel free to open a PR to support your favorite
plugins.

- [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [sneak](https://github.com/justinmk/vim-sneak)
- [lualine](https://github.com/hoob3rt/lualine.nvim)
- [barbar.nvim](https://github.com/romgrk/barbar.nvim)

## Advance Usage

Zenbones is pretty extensible thanks to
[Lush](https://github.com/rktjmp/lush.nvim). You can easily retrieve the colors
in lua:

```lua
local theme = require "zenbones"
local colors = require "zenbones.colors"

print(theme.StatusLine.bg.hex)
print(sand.darken(20).hex)
```

One such example is the custom [lualine](lua/lualine/themes/zenbones.lua) theme.

See also
[Lush's documentation](https://github.com/rktjmp/lush.nvim#advanced-usage) for
the complete options.

## Other implementations

- [iterm2](https://github.com/mcchrish/zenbones-iterm)

### Print terminal colors

You can retrieve the terminal colors by using this command:

```
:lua require("zenbones.print").print_terminal_colors()

...
Terminal colors
foreground: #2C363C
background: #F0EDEC
ansi color0: #2C363C
ansi color1: #C23C55
ansi color2: #617437
ansi color3: #914B27
ansi color4: #286486
ansi color5: #88507D
...
```

Useful when you want to apply a zenbones theme to your terminal.

## Inspirations

Zenbones is heavily inspired by
[Verdandi](https://github.com/be5invis/vsc-theme-verdandi) and
[vim-yin-yang](https://github.com/pgdouyon/vim-yin-yang). The name came from a
book called
[Zen Flesh, Zen Bones](https://en.wikipedia.org/wiki/Zen_Flesh,_Zen_Bones).

There are more similar
[colorschemes with few colors from this collection](https://github.com/mcchrish/vim-no-color-collections).
