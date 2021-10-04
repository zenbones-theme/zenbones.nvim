local lush = require "lush"
local hsluv = lush.hsluv

local palette = {
	bg = hsluv(39, 9, 9), -- sand
	fg = hsluv(230, 10, 76), -- stone
	rose = hsluv(6, 62, 60),
	leaf = hsluv(111, 47, 61),
	wood = hsluv(32, 47, 58),
	water = hsluv(236, 64, 61),
	blossom = hsluv(318, 32, 58),
	sky = hsluv(204, 61, 64),
}

palette.bg_stark = palette.bg.abs_da(3).sa(8)
palette.bg_warm = palette.bg.abs_li(3).de(12)

return palette
