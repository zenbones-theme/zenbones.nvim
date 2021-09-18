# Zenbones

**Zenflesh, Zenbones** is a vim/neovim colorscheme designed to highlight code
using contrasts and font variations. Colors are tasked only for other roles such
as diagnostics, diffs, search matches.

## Usage

Just apply the colorscheme as usual:

```vim
colorscheme zenbones " light
colorscheme zenflesh " dark
```

If you want to make use of the lua version:

```vim
" Requires `neovim` and `rktjmp/lush.nvim` installed
colorscheme zenbones-lush
colorscheme zenflesh-lush
```

It works pretty much the same as the first one but pretty handy when extending
or customizing the colors to your likings.

## Configuration

Configuration is only available for `zenbones-lush` and `zenflesh-lush`.

#### g:zenbones_lightness

Change background colors lightness. Options: `'bright'`, `'dim'`.

#### g:zenflesh_darkness

Change background colors darkness. Options: `'stark'`, `'warm'`.

#### g:zenbones_solid_vert_split

#### g:zenflesh_solid_vert_split

Default: `v:false`

Make vertical split more distinguishable background highlight.

#### g:zenbones_dim_noncurrent_window

Default: `v:false`

Make non-current window background dimmer than _Normal_.

#### g:zenflesh_lighten_noncurrent_window

Default: `v:false`

Make non-current window background warmer than _Normal_.

#### g:zenbones_italic_comments

#### g:zenflesh_italic_comments

Default: `v:true`

Make comments not italicize.

## Advanced Usage

Zenbones is pretty extensible thanks to Lush. You can easily retrieve the colors
in lua:

```lua
local theme = require "zenbones" -- or zenflesh
local palette = require "zenbones.palette"

print(theme.StatusLine.bg.hex)
print(palette.blossom.darken(20).hex)
```

See also
[Lush's documentation](https://github.com/rktjmp/lush.nvim#advanced-usage) for
more options.
