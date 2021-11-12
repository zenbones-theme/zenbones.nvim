local util = require "zenbones.util"
local lush = require "lush"
local hsluv = lush.hsluv

local M = {}

M.light = util.palette_extend({
	bg = hsluv(57.9, 49.8, 96.5), -- base
	fg = hsluv(14.5, 32, 34), -- rose, base: 14.5, 51.1, 63.3
	rose = hsluv(355.6, 38.5, 51.9), -- love
	leaf = hsluv(228.3, 84.5, 41.5), -- pine
	wood = hsluv(45.4, 90.6, 70.8), -- gold
	water = hsluv(208.6, 65.3, 57.7), -- foam
	blossom = hsluv(283.8, 30.2, 54.8), -- iris
	sky = hsluv(208.6, 65.3, 57.7), -- foam
	text = hsluv(270.1, 22.9, 36.8), -- text, base: 270.1, 22.9, 36.8
}, "light")

M.dark = util.palette_extend({
	bg = hsluv(271.2, 20.2, 8.5), -- base
	bg_warm = hsluv(268.9, 24.5, 13.9), -- base moon
	fg = hsluv(14.8, 23, 86), -- rose, base: 14.8, 59.9, 80.3
	rose = hsluv(357.2, 75.7, 62.6), -- love
	leaf = hsluv(227.7, 81.8, 45.8), -- pine
	wood = hsluv(53.2, 78.8, 81.3), -- gold
	water = hsluv(206.7, 42.9, 80), -- foam
	blossom = hsluv(283.1, 67.3, 73), -- iris
	sky = hsluv(206.7, 42.9, 80), -- foam
	text = hsluv(269.4, 56, 89.2), -- text, base: 269.4, 63.6, 89.2
}, "dark")

return M
