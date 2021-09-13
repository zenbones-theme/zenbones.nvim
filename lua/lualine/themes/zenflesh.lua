local common_fg = "#AFA099"
local inactive_bg = "#2E2927"
local inactive_fg = "#CBCFD3"

return {
	normal = {
		a = { bg = "#4D4542", fg = common_fg, gui = "bold" },
		b = { bg = "#3C3633", fg = common_fg },
		c = { bg = "#37312F", fg = "#B6BCC1" },
	},

	insert = {
		a = { bg = "#384126", fg = common_fg, gui = "bold" },
	},

	command = {
		a = { bg = "#775370", fg = common_fg, gui = "bold" },
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
