# Zenbones

A collection of Vim/Neovim colorschemes designed to highlight code using
contrasts and font variations. Colors are tasked only for other roles such as
diagnostics, diffs, search matches.

It is carefully crafted for extensibility. You can
[create your own zenbones-based colorscheme](doc/zenbones.md#create-your-own-colorscheme)
or try the [built-in collection](#usage).

![Zenbones main image](https://user-images.githubusercontent.com/7200153/133883977-116795f3-c602-45f0-8907-b89c8d0b2f82.jpg)

<p align="center">
<em>A rock garden in <a href="https://en.wikipedia.org/wiki/Ry%C5%8Dan-ji">Ryōan-ji</a>.</em>
</p>

## Requirement

-   Neovim v0.8.0 (use v2.0.0 for older versions) or Vim 8.1

## Recommended setup

-   Neovim with true colors support i.e. `set termguicolors`. Vim works but only
    in compatibility mode.
-   Font with bold and italic
-   Terminal or GUI with bold and italic support

## Installation

Example installation using packer:

```lua
use {
    "mcchrish/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    requires = "rktjmp/lush.nvim"
}
```

## Usage

Just apply the colorscheme as usual:

```vim
set termguicolors
set background=light " or dark

colorscheme zenbones
```

Or choose from the collection:

| colorscheme     | description                                                                                |
| --------------- | ------------------------------------------------------------------------------------------ |
| `zenwritten`    | Zero hue and saturation version                                                            |
| `neobones`      | Inspired by [neovim.io](https://neovim.io)                                                 |
| `vimbones`      | Inspired by [vim.org](https://www.vim.org)                                                 |
| `rosebones`     | Inspired by [Rosé Pine](https://rosepinetheme.com)                                         |
| `forestbones`   | Inspired by [Everforest](https://github.com/sainnhe/everforest)                            |
| `nordbones`     | Inspired by [Nord](https://www.nordtheme.com/docs/colors-and-palettes)                     |
| `tokyobones`    | Inspired by [Tokyo Night](https://github.com/enkia/tokyo-night-vscode-theme#color-palette) |
| `seoulbones`    | Inspired by [Seoul256](https://github.com/junegunn/seoul256.vim)                           |
| `duckbones`     | Inspired by [Spaceduck](https://pineapplegiant.github.io/spaceduck)                        |
| `zenburned`     | Inspired by [Zenburn](https://kippura.org/zenburnpage)                                     |
| `kanagawabones` | Inspired by [Kanagawa](https://github.com/rebelot/kanagawa.nvim)                           |
| `randombones`   | Randomly pick from the collection.                                                         |

## [Configuration and other documentations](doc/zenbones.md)

See [documentations](doc/zenbones.md) or `:help zenbones.txt`.

## Showcase

|                                                        light                                                         |                                                         dark                                                         |
| :------------------------------------------------------------------------------------------------------------------: | :------------------------------------------------------------------------------------------------------------------: |
|    ![diff](https://user-images.githubusercontent.com/7200153/133882734-de14cbb7-2faa-431b-9cb4-d674bf0f1d6a.png)     |    ![diff](https://user-images.githubusercontent.com/7200153/133882728-69abeca4-65d2-44e9-bddb-955e871c3143.png)     |
| ![diagnostics](https://user-images.githubusercontent.com/7200153/133882735-974ce339-1d5e-4bc0-9a95-82d21934222b.png) | ![diagnostics](https://user-images.githubusercontent.com/7200153/133882738-1b11be5f-5885-4ff9-9670-7e0bacbb6dd8.png) |

|                                                         'bright'                                                          |                                                          default                                                           |                                                         'dim'                                                          |
| :-----------------------------------------------------------------------------------------------------------------------: | :------------------------------------------------------------------------------------------------------------------------: | :--------------------------------------------------------------------------------------------------------------------: |
| ![Bright lightness](https://user-images.githubusercontent.com/7200153/133776552-5919f664-17d9-4d96-bf44-d587f20b01dc.png) | ![Default lightness](https://user-images.githubusercontent.com/7200153/133776625-d8e9dd88-13b3-4362-9cad-2031ef6ccf7d.png) | ![Dim lightness](https://user-images.githubusercontent.com/7200153/133776674-ff7d15e9-52e3-4a27-9099-722ffcbe1cb8.png) |

|                                                         'stark'                                                         |                                                          default                                                          |                                                         'warm'                                                         |
| :---------------------------------------------------------------------------------------------------------------------: | :-----------------------------------------------------------------------------------------------------------------------: | :--------------------------------------------------------------------------------------------------------------------: |
| ![Stark darkness](https://user-images.githubusercontent.com/7200153/133776839-4b12c3dd-233f-47d1-9740-006bf50e812a.png) | ![Default darkness](https://user-images.githubusercontent.com/7200153/133776882-26d006b4-50db-49ad-bd79-3bec327a95fc.png) | ![Warm darkness](https://user-images.githubusercontent.com/7200153/133776957-3d2949c9-51b6-4537-aca4-6ced80113b91.png) |

See more [showcase](doc/showcase.md) from the other colorschemes or checkout the
[vimcolorschemes page](https://vimcolorschemes.com/mcchrish/zenbones.nvim).

## Other plugins support

Aside from LSP and basic Tree-sitter support, here are some plugins that are
currently supported.

-   [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
-   [Git Gutter](https://github.com/airblade/vim-gitgutter)
-   [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
-   [Telescope](https://github.com/nvim-telescope/telescope.nvim)
-   [Sneak](https://github.com/justinmk/vim-sneak)
-   [Leap](https://github.com/ggandor/leap.nvim)
-   [Hop](https://github.com/phaazon/hop.nvim)
-   [Lualine](https://github.com/hoob3rt/lualine.nvim)
-   [Lightline](https://github.com/itchyny/lightline.vim)
-   [BarBar](https://github.com/romgrk/barbar.nvim)
-   [CoC](https://github.com/neoclide/coc.nvim)
-   [Cmp](https://github.com/hrsh7th/nvim-cmp)
-   [Neogit](https://github.com/TimUntersberger/neogit)
-   [WhichKey](https://github.com/folke/which-key.nvim)
-   [Trouble](https://github.com/folke/trouble.nvim)
-   [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
-   [n³](https://github.com/mcchrish/nnn.vim)
-   [Mason](https://github.com/williamboman/mason.nvim)

## Other implementations

-   [iTerm2](extras/iterm)
-   [Kitty](extras/kitty)
-   [Alacritty](extras/alacritty)
-   [WezTerm](extras/wezterm)
-   [Windows Terminal](extras/windows_terminal)
-   [Foot](extras/foot)
-   [Tmux](extras/tmux)

It's also possible to generate any color configuration files using shipwright,
[this one for Kitty](lua/zenbones/shipwright/runners/kitty.lua) for example.
Please feel free to submit a PR if you want to add some more.

## Inspirations

Zenbones is heavily inspired by
[Verdandi](https://github.com/be5invis/vsc-theme-verdandi) and
[vim-yin-yang](https://github.com/pgdouyon/vim-yin-yang). The name came from a
book called
[Zen Flesh, Zen Bones](https://en.wikipedia.org/wiki/Zen_Flesh,_Zen_Bones).

There are more similar
[colorschemes with few colors from this collection](https://github.com/mcchrish/vim-no-color-collections).
