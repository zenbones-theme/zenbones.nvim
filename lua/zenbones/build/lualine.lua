local template = [[local common_fg = "${common_fg}"
local inative_bg = "${inative_bg}"
local inative_fg = "${inative_fg}"

return {
	normal = {
		a = { bg = "${normal_a_bg}", fg = common_fg, gui = "bold" },
		b = { bg = "${normal_b_bg}", fg = common_fg },
		c = { bg = "${normal_c_bg}", fg = "${normal_c_fg}" },
	},

	insert = {
		a = { bg = "${insert_a_bg}", fg = common_fg, gui = "bold" },
	},

	command = {
		a = { bg = "${command_a_bg}", fg = common_fg, gui = "bold" },
	},

	visual = {
		a = { bg = "${visual_a_bg}", fg = common_fg, gui = "bold" },
	},

	replace = {
		a = { bg = "${replace_a_bg}", fg = common_fg, gui = "bold" },
	},

	inactive = {
		a = { bg = inative_bg, fg = inative_fg, gui = "bold" },
		b = { bg = inative_bg, fg = inative_fg },
		c = { bg = inative_bg, fg = inative_fg },
	},
}
]]

local theme = require "zenbones"

return {
	"lua/lualine/themes/zenbones.lua",
	template,
	{
		common_fg = theme.Folded.fg.hex,
		inative_bg = theme.StatusLineNC.bg.hex,
		inative_fg = theme.StatusLineNC.fg.hex,
		normal_a_bg = theme.PmenuSbar.bg.hex,
		normal_b_bg = theme.PmenuSel.bg.hex,
		normal_c_bg = theme.StatusLine.bg.hex,
		normal_c_fg = theme.StatusLine.fg.hex,
		insert_a_bg = theme.DiffAdd.bg.hex,
		command_a_bg = theme.Search.bg.hex,
		visual_a_bg = theme.Visual.bg.hex,
		replace_a_bg = theme.DiffDelete.bg.hex,
	},
}
