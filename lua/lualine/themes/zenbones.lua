local t = require "zenbones"

return {
	normal = {
		a = { bg = t.PmenuSbar.bg.hex, fg = t.Folded.fg.hex, gui = "bold" },
		b = { bg = t.PmenuSel.bg.hex, fg = t.Folded.fg.hex },
		c = { bg = t.StatusLine.bg.hex, fg = t.StatusLine.fg.hex },
	},

	insert = {
		a = { bg = t.DiffAdd.bg.hex, fg = t.Folded.fg.hex, gui = "bold" },
	},

	command = {
		a = { bg = t.ColorColumn.bg.hex, fg = t.Folded.fg.hex, gui = "bold" },
	},

	visual = {
		a = { bg = t.Search.bg.hex, fg = t.Folded.fg.hex, gui = "bold" },
	},

	replace = {
		a = { bg = t.DiffDelete.bg.hex, fg = t.Folded.fg.hex, gui = "bold" },
	},

	inactive = {
		a = { bg = t.StatusLineNC.bg.hex, fg = t.StatusLineNC.fg.hex, gui = "bold" },
		b = { bg = t.StatusLineNC.bg.hex, fg = t.StatusLineNC.fg.hex },
		c = { bg = t.StatusLineNC.bg.hex, fg = t.StatusLineNC.fg.hex },
	},
}
