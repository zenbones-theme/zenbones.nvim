local util = require "zenbones.util"
local lush = require "lush"
local hsluv = lush.hsluv

local M = {}

M.light = util.palette_extend({
	bg = hsluv(85.9, 27, 94),
	fg = hsluv(0, 0, 22),
	vim = hsluv(131.8, 92, 51),
}, "light")

return M
