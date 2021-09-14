local common_fg = "#9E918A"
local inactive_bg = "#302B29"
local inactive_fg = "#C8CDD0"

return {
	normal = {
		a = { bg = "#514A46", fg = common_fg, gui = "bold" },
		b = { bg = "#403A37", fg = common_fg },
		c = { bg = "#3C3633", fg = "#B3BABF" },
	},

	insert = {
		a = { bg = "#384126", fg = common_fg, gui = "bold" },
	},

	command = {
		a = { bg = "#714F6A", fg = common_fg, gui = "bold" },
	},

	visual = {
		a = { bg = "#303B41", fg = common_fg, gui = "bold" },
	},

	replace = {
		a = { bg = "#5D383D", fg = common_fg, gui = "bold" },
	},

	inactive = {
		a = { bg = inactive_bg, fg = inactive_fg, gui = "bold" },
		b = { bg = inactive_bg, fg = inactive_fg },
		c = { bg = inactive_bg, fg = inactive_fg },
	},
}
