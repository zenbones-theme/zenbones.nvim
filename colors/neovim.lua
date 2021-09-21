vim.g.colors_name = "neovim"

local theme_name = vim.opt.background:get() == "light" and "zenbones" or "zenflesh"

-- By setting our module to nil, we clear lua's cache,
-- which means the require ahead will *always* occur.
--
-- This isn't strictly required but it can be a useful trick if you are
-- incrementally editing your config a lot and want to be sure your themes
-- changes are being picked up without restarting neovim.
--
-- Note if you're working in on your theme and have :Lushify'd the buffer,
-- your changes will be applied with our without the following line.
--
-- The performance impact of this call can be measured in the hundreds of
-- *nanoseconds* and such could be considered "production safe".
package.loaded[theme_name .. ".palette"] = nil
package.loaded[theme_name] = nil

local lush = require "lush"
local hsluv = lush.hsluv

local palette = require(theme_name .. ".palette")
if theme_name == "zenbones" then
	palette.bg = hsluv "#e7eee8" -- --bg-color
	palette.fg = hsluv "#202e18" -- --accent-color
	palette.leaf = palette.leaf.sa(24).li(8) -- Need to make green more prominent
else
	palette.bg = hsluv "#0f191f" -- --bg-color
	palette.fg = hsluv "#c7d6d0" -- --fg-color
	palette.leaf = hsluv "#8fff6d" -- --accent-color
end

local theme = require(theme_name)
local specs
if theme_name == "zenbones" then
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

require(theme_name .. ".terminal").setup()

-- include our theme file and pass it to lush to apply
lush(specs)
