# Zenbones

Zenbones is a colorscheme designed

It's made using the handy [lush](https://github.com/rktjmp/lush.nvim) theme builder.

![zenbones-main-image](https://user-images.githubusercontent.com/7200153/130731060-85313919-8a04-45e2-813a-ea67f602d1c5.jpg)

<p align="center">
<a href="https://en.wikipedia.org/wiki/Ry%C5%8Dan-ji">Ryōan-ji</a>
</p>

## Requirements

Primarily built for nvim but it works pretty well with vim. However here are
some requirements to take full advantage of the theme:

- 24-bit RGB colors (vim compiled with +termguicolors)
- Terminal or GUI with bold and italic support

## Usage

Install using your favorite plugin manager and just apply the colorscheme as
usual:

```vim
set termguicolors
colorscheme zenbones
```

Alternatively, if you want to make use of lua or forked this repo and tweaked
the colors to your liking:

```vim
set termguicolors
colorscheme zenbones-lua
```

To make it work however, you must install lush.

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

<img width="1128" alt="Diagnostics" src="https://user-images.githubusercontent.com/7200153/130731432-863956db-8061-4edb-b4a3-bf95f4631f5b.png">

</details>

_Font used is [Iosevka](https://typeof.net/Iosevka/)_.

## Other plugin support

There are only a few plugins that are currently supported. Please feel free to
open a PR to support your favorite plugins.

-  [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
-  [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
-  [Telescope](https://github.com/nvim-telescope/telescope.nvim)
-  [sneak](https://github.com/justinmk/vim-sneak)

## Other implementations

- [iterm2](https://github.com/mcchrish/zenbones-iterm)

## Inspirations

Zenbones is heavily inspired by
[Vervandi](https://github.com/be5invis/vsc-theme-verdandi) and
[vim-yin-yang](https://github.com/pgdouyon/vim-yin-yang). The name came from
this [small book](https://en.wikipedia.org/wiki/Zen_Flesh,_Zen_Bones).
