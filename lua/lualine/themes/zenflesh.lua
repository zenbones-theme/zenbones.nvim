local common_fg = "#9E948F"
local inactive_bg = "#312D2B"
local inactive_fg = "#CAD0D4"

return {
	normal = {
		a = { bg = "#524C4A", fg = common_fg, gui = "bold" },
		b = { bg = "#3F3A38", fg = common_fg },
		c = { bg = "#3D3836", fg = "#B4BDC3" },
	},

	insert = {
		a = { bg = "#333C2C", fg = common_fg, gui = "bold" },
	},

	command = {
		a = { bg = "#73516C", fg = common_fg, gui = "bold" },
	},

	visual = {
		a = { bg = "#37393B", fg = common_fg, gui = "bold" },
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
