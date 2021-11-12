local util = require "zenbones.util"
local lush = require "lush"
local hsluv = lush.hsluv

local M = {}

M.light = util.palette_extend({
	bg = hsluv(0, 0, 94), -- sand
	fg = hsluv(0, 0, 22), -- stone
}, "light")

M.dark = util.palette_extend({
	bg = hsluv(0, 0, 9), -- sand
	fg = hsluv(0, 0, 76), -- stone
}, "dark")

return M
