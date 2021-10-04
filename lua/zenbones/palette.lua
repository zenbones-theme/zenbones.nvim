local lush = require "lush"
local hsluv = lush.hsluv

local palette = {
	bg = hsluv(39, 12, 94), -- sand
	fg = hsluv(230, 30, 22), -- stone
	leaf = hsluv(112, 72, 42),
	water = hsluv(236, 84, 40),
	rose = hsluv(4, 70, 40),
	wood = hsluv(26, 80, 40),
	blossom = hsluv(318, 42, 42),
	sky = hsluv(204, 80, 53),
}

palette.bg_bright = palette.bg.abs_li(3).sa(6)
palette.bg_dim = palette.bg.abs_da(3).de(12)

return palette
