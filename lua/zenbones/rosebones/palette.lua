local lush = require "lush"
local hsl = lush.hsl

local base_name = require("zenbones.util").bg_to_base_name()
local palette = require(base_name .. ".palette")

if base_name == "zenbones" then
	palette.bg = hsl(32, 57, 95) -- base
	palette.bg_bright = palette.bg.abs_li(3).sa(6)
	palette.bg_dim = palette.bg.abs_da(3)
	-- palette.fg = hsl(245, 50, 91) -- text
	palette.fg = hsl(3, 30, 40) -- rose, base: 3, 53, 67
	palette.rose = hsl(343, 35, 55) -- love
	palette.leaf = hsl(197, 53, 34) -- pine
	palette.wood = hsl(35, 81, 56) -- gold
	palette.water = hsl(189, 30, 48) -- foam
	palette.blossom = hsl(268, 21, 57) -- iris
	palette.sky = hsl(189, 30, 48) -- foam
else
	palette.bg = hsl(249, 22, 12) -- base
	palette.bg_stark = palette.bg.abs_da(3).sa(8)
	palette.bg_warm = hsl(246, 24, 17) -- base moon
	-- palette.fg = hsl(245, 50, 91) -- text
	palette.fg = hsl(2, 18, 83) -- rose, base: 2, 55, 83
	palette.rose = hsl(343, 76, 68) -- love
	palette.leaf = hsl(197, 49, 38) -- pine
	palette.wood = hsl(35, 88, 72) -- gold
	palette.water = hsl(189, 43, 73) -- foam
	palette.blossom = hsl(267, 57, 78) -- iris
	palette.sky = hsl(190, 15, 73) -- foam
end

return palette
