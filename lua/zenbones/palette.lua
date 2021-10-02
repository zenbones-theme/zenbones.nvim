local lush = require "lush"
local hsluv = lush.hsluv

local sand = hsluv(39, 12, 94)
local stone = hsluv(230, 30, 22)

return {
	bg = sand,
	bg_bright = sand.abs_li(3).sa(6),
	bg_dim = sand.abs_da(3).de(12),
	fg = stone,
	leaf = hsluv(112, 72, 42),
	water = hsluv(236, 84, 40),
	rose = hsluv(4, 70, 40),
	wood = hsluv(26, 80, 40),
	blossom = hsluv(318, 42, 42),
	sky = hsluv(204, 80, 53),
}
