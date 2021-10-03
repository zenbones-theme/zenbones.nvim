-- This file is auto-generated from lua/zenbones/template/lualine.lua
local common_fg = "#9FBDD1"
local inactive_bg = "#1F3441"
local inactive_fg = "#D6E1DC"

return {
	normal = {
		a = { bg = "#4B7C9B", fg = common_fg, gui = "bold" },
		b = { bg = "#33566B", fg = common_fg },
		c = { bg = "#284253", fg = "#C7D6D0" },
	},

	insert = {
		a = { bg = "#455C6F", fg = common_fg, gui = "bold" },
	},

	command = {
		a = { bg = "#73516C", fg = common_fg, gui = "bold" },
	},

	visual = {
		a = { bg = "#3A4A44", fg = common_fg, gui = "bold" },
	},

	replace = {
		a = { bg = "#5B2E33", fg = common_fg, gui = "bold" },
	},

	inactive = {
		a = { bg = inactive_bg, fg = inactive_fg, gui = "bold" },
		b = { bg = inactive_bg, fg = inactive_fg },
		c = { bg = inactive_bg, fg = inactive_fg },
	},
}
