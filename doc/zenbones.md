# Zenbones

**Zenflesh, Zenbones** is a vim/neovim colorscheme designed to highlight code
using contrasts and font variations. Colors are tasked only for other roles such
as diagnostics, diffs, search matches.

## Usage

Just apply the colorscheme as usual:

```vim
colorscheme zenbones " light
colorscheme zenflesh " dark

" https://neovim.io flavor
colorscheme neobones
" Rosé Pine flavor - https://rosepinetheme.com
colorscheme rosebones
```

It works pretty much the same as the first one but pretty handy when extending
or customizing the colors to your likings.

## Configuration

Configuration is only available for neovim.

#### g:zenbones_lightness

Change background colors lightness. Options: `'bright'`, `'dim'`.

#### g:zenflesh_darkness

Change background colors darkness. Options: `'stark'`, `'warm'`.

#### g:zenbones_solid_vert_split

#### g:zenflesh_solid_vert_split

Default: `v:false`. Make vertical split more distinguishable background
highlight.

#### g:zenbones_dim_noncurrent_window

Default: `v:false`. Make non-current window background dimmer than _Normal_.

#### g:zenflesh_lighten_noncurrent_window

Default: `v:false`. Make non-current window background warmer than _Normal_.

#### g:zenbones_italic_comments

#### g:zenflesh_italic_comments

Default: `v:true`. Make comments italicize.

#### lightline

```vim
let g:lightline = {
      \ 'colorscheme': 'zenbones', " or 'zenflesh'
      \ }
```

#### lualine

```lua
options = { theme = 'zenbones' } -- or 'zenflesh'
```

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

### Create your own colorscheme

You can ultimately create your own colorscheme that is based on Zenbones by
modifying the base palette and extending the specs. Best way to demonstrate this
is through an example. Let's make a zenbones-flavored Gruvbox colorscheme called
`gruvbones`.

Let's define our
[colorscheme](https://neovim.io/doc/user/syntax.html#:colorscheme) in
`nvim/colors/gruvbones.lua`. And it contains the following:

```lua
vim.g.colors_name = "gruvbones"

local lush = require "lush"
local hsluv = lush.hsluv -- human-friendly hsl
local util = require "zenbones.util"

-- let's base bg=dark, bg=light on zenflesh, zenbones specs respectively
local base_name = util.bg_to_base_name()

-- create a palette. Use palette_extend to fill unspecified colors
-- based on https://github.com/gruvbox-community/gruvbox#palette
local palette
if base_name == "zenbones" then
	palette = util.palette_extend({
		bg = hsluv "#fbf1c7",
		fg = hsluv "#3c3836",
		rose = hsluv "#9d0006",
		leaf = hsluv "#79740e",
		wood = hsluv "#b57614",
		water = hsluv "#076678",
		blossom = hsluv "#8f3f71",
		sky = hsluv "#427b58",
	}, "zenbones")
else
	palette = util.palette_extend({
		bg = hsluv "#282828",
		fg = hsluv "#ebdbb2",
		rose = hsluv "#fb4934",
		leaf = hsluv "#b8bb26",
		wood = hsluv "#fabd2f",
		water = hsluv "#83a598",
		blossom = hsluv "#d3869b",
		sky = hsluv "#83c07c",
	}, "zenflesh")
end

-- generate the lush specs using the generator util
local generator = require(base_name .. ".specs")
local base_specs = generator.generate(palette, generator.get_global_config(base_name))

-- optionally extend specs using Lush
local specs = lush.extends({ base_specs }).with(function()
	return {
		Statement { base_specs.Statement, fg = palette.rose },
		Special { fg = palette.water },
		Type { fg = palette.sky, gui = "italic" },
	}
end)

-- include our theme file and pass it to lush to apply
lush(specs)

-- optionally, set term colors
require("zenbones.term").apply_colors(palette)
```

And there you have it. Just call `colorscheme gruvbones` to use your new
colorscheme. It respects `&background` and other configurations too.

Also checkout the [neovim](../colors/neovim.lua) and
[rosebones](../colors/rosebones.lua) colorscheme for a similar and complete
example.
