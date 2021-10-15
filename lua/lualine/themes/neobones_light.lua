-- This file is auto-generated from lua/zenbones/template/lualine.lua
local common_fg = "#4A4F4A"
local inactive_bg = "#C8D5C9"
local inactive_fg = "#4B663C"

return {
	normal = {
		a = { bg = "#9BA69D", fg = common_fg, gui = "bold" },
		b = { bg = "#ADB9AF", fg = common_fg },
		c = { bg = "#BDCABF", fg = "#202E18" },
	},

	insert = {
		a = { bg = "#9EBCD6", fg = common_fg, gui = "bold" },
	},

	command = {
		a = { bg = "#D2A6C8", fg = common_fg, gui = "bold" },
	},

	visual = {
		a = { bg = "#B1EA90", fg = common_fg, gui = "bold" },
	},

	replace = {
		a = { bg = "#EAD5D7", fg = common_fg, gui = "bold" },
	},

	inactive = {
		a = { bg = inactive_bg, fg = inactive_fg, gui = "bold" },
		b = { bg = inactive_bg, fg = inactive_fg },
		c = { bg = inactive_bg, fg = inactive_fg },
	},
}
