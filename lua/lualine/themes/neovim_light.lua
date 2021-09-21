-- This file is auto-generated from lua/zenbones/template/lualine.lua
local common_fg = "#46624A"
local inactive_bg = "#CCDBCE"
local inactive_fg = "#597F43"

return {
	normal = {
		a = { bg = "#9AB79E", fg = common_fg, gui = "bold" },
		b = { bg = "#B1C8B5", fg = common_fg },
		c = { bg = "#C0D3C3", fg = "#212F19" },
	},

	insert = {
		a = { bg = "#99C6E9", fg = common_fg, gui = "bold" },
	},

	command = {
		a = { bg = "#D2A6C8", fg = common_fg, gui = "bold" },
	},

	visual = {
		a = { bg = "#D8E6D0", fg = common_fg, gui = "bold" },
	},

	replace = {
		a = { bg = "#E7CBCE", fg = common_fg, gui = "bold" },
	},

	inactive = {
		a = { bg = inactive_bg, fg = inactive_fg, gui = "bold" },
		b = { bg = inactive_bg, fg = inactive_fg },
		c = { bg = inactive_bg, fg = inactive_fg },
	},
}
