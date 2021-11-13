local util = require "zenbones.util"
local lush = require "lush"
local hsluv = lush.hsluv

local M = {}

M.light = util.palette_extend({
	bg = hsluv "#e1e1e1",
	fg = hsluv("#616161").da(12),
	rose = hsluv("#e17899").da(12),
	leaf = hsluv("#719872").da(12),
	wood = hsluv("#e19972").da(12),
	water = hsluv("#0099bd").da(12),
	blossom = hsluv("#9a7599").da(12),
	sky = hsluv("#009799").da(12),
	orange = hsluv("#9a7200").da(12),
}, "light")

M.dark = util.palette_extend({
	bg = hsluv "#4b4b4b",
	fg = hsluv("#d9d9d9").li(10),
	rose = hsluv("#e17899").li(12),
	leaf = hsluv "#98bc99",
	wood = hsluv "#ffde99",
	water = hsluv "#98bede",
	blossom = hsluv("#999abd").li(10),
	sky = hsluv "#6fbcbd",
	orange = hsluv "#e19972",
}, "dark")

return M
