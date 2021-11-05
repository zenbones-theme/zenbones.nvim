local M = {}

M.colorscheme_to_term_colors = function(colorscheme)
	local specs, _, term = unpack(colorscheme)
	local fg = specs.Normal.fg.hex
	return {
		fg = fg,
		bg = specs.Normal.bg.hex,
		cursor_fg = specs.Cursor.fg.hex,
		cursor_bg = specs.Cursor.bg.hex,
		selection_bg = specs.Visual.bg.hex,
		selection_fg = fg,
		black = term[1].hex,
		red = term[2].hex,
		green = term[3].hex,
		yellow = term[4].hex,
		blue = term[5].hex,
		magenta = term[6].hex,
		cyan = term[7].hex,
		white = term[8].hex,
		bright_black = term[9].hex,
		bright_red = term[10].hex,
		bright_green = term[11].hex,
		bright_yellow = term[12].hex,
		bright_blue = term[13].hex,
		bright_magenta = term[14].hex,
		bright_cyan = term[15].hex,
		bright_white = term[16].hex,
	}
end

return M
