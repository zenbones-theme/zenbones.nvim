local util = require "zenbones.util"
local lush = require "lush"
local hsluv = lush.hsluv

local M = {}

M.dark = util.palette_extend({
	bg = hsluv "#3f3f3f",
	fg = hsluv("#efdcbc").de(14).li(20),
	rose = hsluv "#e37170",
}, "dark")

return M
