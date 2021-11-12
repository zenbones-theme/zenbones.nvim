local util = require "zenbones.util"
local lush = require "lush"
local hsluv = lush.hsluv

local M = {}

M.light = util.palette_extend({
	bg = hsluv "#d5d6db",
	fg = hsluv "#343b58",
	rose = hsluv "#8c4351",
	leaf = hsluv "#33635c",
	wood = hsluv "#8f5e15",
	water = hsluv "#34548a",
	blossom = hsluv "#5a4a78",
	sky = hsluv "#166775",
	orange = hsluv "#965027",
	sky1 = hsluv "#33635c",
}, "light")

M.dark = util.palette_extend({
	bg = hsluv "#1a1b26",
	bg_warm = hsluv "#24283b", -- storm
	fg = hsluv "#c0caf5",
	rose = hsluv "#f7768e",
	leaf = hsluv "#73daca",
	wood = hsluv "#e0af68",
	water = hsluv "#7aa2f7",
	blossom = hsluv "#bb9af7",
	sky = hsluv "#2ac3de",
	orange = hsluv "#ff9e64",
	sky1 = hsluv "#73daca",
}, "dark")

return M
