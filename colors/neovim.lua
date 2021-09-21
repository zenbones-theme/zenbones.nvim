vim.g.colors_name = "neovim"

local base_name = vim.opt.background:get() == "light" and "zenbones" or "zenflesh"

-- reset base palette and specs
package.loaded[base_name .. ".palette"] = nil
package.loaded[base_name] = nil

local lush = require "lush"
local hsluv = lush.hsluv

-- modify base palette first (before requiring specs)
local palette = require(base_name .. ".palette")
if base_name == "zenbones" then
	palette.bg = hsluv "#e7eee8" -- --bg-color
	palette.fg = hsluv "#202e18" -- --accent-color
	palette.leaf = palette.leaf.sa(24).li(8) -- Need to make green more prominent
else
	palette.bg = hsluv "#0f191f" -- --bg-color
	palette.fg = hsluv "#c7d6d0" -- --fg-color
	palette.leaf = hsluv "#8fff6d" -- --accent-color
end

-- extend specs using Lush
local theme = require(base_name)
local specs
if base_name == "zenbones" then
	specs = lush.extends({ theme }).with(function()
		return {
			helpHyperTextJump { fg = hsluv "#195174" }, -- --link-color
			helpOption { helpHyperTextJump },
			markdownUrl { helpHyperTextJump },
		}
	end)
else
	specs = lush.extends({ theme }).with(function()
		return {
			FloatBorder { fg = hsluv "#203f57" }, -- --border-color
			helpHyperTextJump { fg = hsluv "#8ec77e" }, -- --link-color
			helpOption { helpHyperTextJump },
			markdownUrl { helpHyperTextJump },
		}
	end)
end

require(base_name .. ".terminal").setup()

-- include our theme file and pass it to lush to apply
lush(specs)
