local util = require "zenbones.util"
local lush = require "lush"
local hsluv = lush.hsluv

local M = {}

M.light = util.palette_extend({
	bg = hsluv(72, 52, 96), -- base 72, 100, 98
	fg = hsluv(226.3, 24.8, 38), -- base 226.3, 24.8, 43.9
	rose = hsluv(12.7, 90.9, 59),
	leaf = hsluv(96.6, 99.9, 62.6),
	wood = hsluv(53.5, 100, 70.1),
	water = hsluv(236.1, 86.1, 58.1),
	blossom = hsluv(327.8, 67, 61.1),
	sky = hsluv(151.6, 87.3, 61.5),
}, "light")

M.dark = util.palette_extend({
	bg = hsluv(232.6, 27, 20.7),
	fg = hsluv(67.1, 26.4, 88), -- base: 67.1, 26.4, 80.3
	rose = hsluv(11.3, 67.5, 64.4),
	leaf = hsluv(105.4, 50.2, 74.5),
	wood = hsluv(62.2, 55.8, 77.6),
	water = hsluv(179.5, 51, 71.8),
	blossom = hsluv(339.1, 46.7, 69.8),
	sky = hsluv(136.1, 45.8, 72.6),
}, "dark")

return M
