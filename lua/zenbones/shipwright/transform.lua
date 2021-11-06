local M = {}

M.colorscheme_to_term_colors = function(colorscheme)
	local specs, _, term = unpack(colorscheme)
	local fg = specs.Normal.fg
	return {
		fg = fg,
		bg = specs.Normal.bg,
		cursor_fg = specs.Cursor.fg,
		cursor_bg = specs.Cursor.bg,
		selection_bg = specs.Visual.bg,
		selection_fg = fg,
		black = term[1],
		red = term[2],
		green = term[3],
		yellow = term[4],
		blue = term[5],
		magenta = term[6],
		cyan = term[7],
		white = term[8],
		bright_black = term[9],
		bright_red = term[10],
		bright_green = term[11],
		bright_yellow = term[12],
		bright_blue = term[13],
		bright_magenta = term[14],
		bright_cyan = term[15],
		bright_white = term[16],
	}
end

return M
