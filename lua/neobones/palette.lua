local util = require "zenbones.util"
local lush = require "lush"
local hsluv = lush.hsluv

local M = {}

M.light = util.palette_extend({
	-- bg = hsluv "#d3e4db" -- --accent-bg-color
	bg = hsluv "#e7eee8", -- --bg-color
	fg = hsluv "#202e18", -- --accent-color
}, "light")
M.light.leaf = M.light.leaf.sa(24).li(8) -- need to make green more prominent

M.dark = util.palette_extend({
	bg = hsluv "#0f191f", -- --bg-color
	fg = hsluv "#c7d6d0", -- --fg-color
	leaf = hsluv "#8fff6d", -- --accent-color
	water = hsluv "#8190d4", -- default blue looks to close to bg
}, "dark")

return M
