-- This file is auto-generated from lua/zenbones/template/lualine.lua
local common_fg = "#A8B1C5"
local inactive_bg = "#414959"
local inactive_fg = "#F2F4F7"

return {
	normal = {
		a = { bg = "#727F98", fg = common_fg, gui = "bold" },
		b = { bg = "#576175", fg = common_fg },
		c = { bg = "#485061", fg = "#EBEEF3" },
	},

	insert = {
		a = { bg = "#476968", fg = common_fg, gui = "bold" },
	},

	command = {
		a = { bg = "#84637E", fg = common_fg, gui = "bold" },
	},

	visual = {
		a = { bg = "#545F70", fg = common_fg, gui = "bold" },
	},

	replace = {
		a = { bg = "#663A3E", fg = common_fg, gui = "bold" },
	},

	inactive = {
		a = { bg = inactive_bg, fg = inactive_fg, gui = "bold" },
		b = { bg = inactive_bg, fg = inactive_fg },
		c = { bg = inactive_bg, fg = inactive_fg },
	},
}
