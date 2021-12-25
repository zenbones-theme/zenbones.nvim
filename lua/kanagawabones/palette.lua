local util = require "zenbones.util"
local lush = require "lush"
local hsluv = lush.hsluv

local M = {}

M.dark = util.palette_extend({
	bg = hsluv "#1f1f28",
	fg = hsluv "#dcd7ba",
	leaf = hsluv "#98bb6c",
	water = hsluv "#7fb4ca",
	rose = hsluv "#e46876",
	wood = hsluv "#e6c384",
	blossom = hsluv "#957fb8",
	sky = hsluv "#7fb4ca",
}, "dark")

return M
