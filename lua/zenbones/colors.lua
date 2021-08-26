local lush = require "lush"
local hsluv = lush.hsluv

local config = {
	sand = hsluv(39, 12, 94),
	stone = hsluv(230, 30, 22),
	leaf = hsluv(103, 72, 46),
	water = hsluv(236, 84, 40),
	rose = hsluv(5, 70, 46),
	wood = hsluv(28, 80, 40),
	blossom = hsluv(318, 42, 42),
	sky = hsluv(204, 80, 53),
}

config.white = config.sand.li(58)

return config
