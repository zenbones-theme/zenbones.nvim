local lush = require "lush"
local hsl = lush.hsl

local base_name = require("zenbones.util").bg_to_base_name()
local palette = require(base_name .. ".palette")

if base_name == "zenbones" then
	palette.bg = hsl "#e7eee8" -- --bg-color
	palette.fg = hsl "#202e18" -- --accent-color
	palette.leaf = palette.leaf.sa(24).li(8) -- need to make green more prominent
else
	palette.bg = hsl "#0f191f" -- --bg-color
	palette.fg = hsl "#c7d6d0" -- --fg-color
	palette.leaf = hsl "#8fff6d" -- --accent-color
end

return palette
