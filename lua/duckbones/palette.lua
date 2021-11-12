local util = require "zenbones.util"
local lush = require "lush"
local hsluv = lush.hsluv

local M = {}

M.dark = util.palette_extend({
	bg = hsluv "#0f111b",
	fg = hsluv "#ecf0c1",
	rose = hsluv "#e33400",
	leaf = hsluv "#5ccc96",
	wood = hsluv "#e39400",
	water = hsluv "#00a3cc",
	blossom = hsluv "#7a5ccc",
	blossom1 = hsluv "#b3a1e6",
	sky = hsluv "#00a3cc",
}, "dark")

return M
