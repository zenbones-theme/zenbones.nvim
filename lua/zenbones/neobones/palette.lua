local lush = require "lush"
local hsluv = lush.hsluv

local M = {}

local zenbones_p = require "zenbones.palette"
local zenbones = vim.tbl_extend("keep", {
	-- bg = hsluv "#d3e4db" -- --accent-bg-color
	bg = hsluv "#e7eee8", -- --bg-color
	fg = hsluv "#202e18", -- --accent-color
	leaf = hsluv "#8fff6d", -- need to make green more prominent
	leaf = zenbones_p.leaf.sa(24).li(8), -- need to make green more prominent
}, zenbones_p)
M.zenbones = zenbones

local zenflesh = vim.tbl_extend("keep", {
	bg = hsluv "#0f191f", -- --bg-color
	fg = hsluv "#c7d6d0", -- --fg-color
	leaf = hsluv "#8fff6d", -- --accent-color
}, require "zenflesh.palette")
M.zenflesh = zenflesh

return M
