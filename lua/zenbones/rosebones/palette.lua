local lush = require "lush"
local hsl = lush.hsl

local M = {}

local zenbones = {
	bg = hsl(32, 57, 95), -- base
	fg = hsl(3, 24, 38), -- rose, base: 3, 53, 67
	rose = hsl(343, 35, 55), -- love
	leaf = hsl(197, 53, 34), -- pine
	wood = hsl(35, 81, 56), -- gold
	water = hsl(189, 30, 48), -- foam
	blossom = hsl(268, 21, 57), -- iris
	sky = hsl(189, 30, 48), -- foam
	text = hsl(248, 12, 40), -- text, base: 248, 19, 40
}
zenbones.bg_bright = zenbones.bg.abs_li(3).sa(6)
zenbones.bg_dim = zenbones.bg.abs_da(3)
M.zenbones = zenbones

local zenflesh = {
	bg = hsl(249, 22, 12), -- base
	fg = hsl(2, 18, 83), -- rose, base: 2, 55, 83
	rose = hsl(343, 76, 68), -- love
	leaf = hsl(197, 49, 38), -- pine
	wood = hsl(35, 88, 72), -- gold
	water = hsl(189, 43, 73), -- foam
	blossom = hsl(267, 57, 78), -- iris
	sky = hsl(190, 15, 73), -- foam
	text = hsl(245, 20, 78), -- text, base: 245, 50, 91
}
zenflesh.bg_stark = zenflesh.bg.abs_da(3).sa(8)
zenflesh.bg_warm = hsl(246, 24, 17) -- base moon
M.zenflesh = zenflesh

return M
