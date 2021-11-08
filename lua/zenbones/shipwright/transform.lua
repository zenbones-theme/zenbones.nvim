local M = {}

M.colorscheme_to_term_colors = function(colorscheme)
	local specs, _, term = unpack(colorscheme)
	local fg = specs.Normal.fg
	return vim.tbl_extend("keep", {
		fg = fg,
		bg = specs.Normal.bg,
		cursor_fg = specs.Cursor.fg,
		cursor_bg = specs.Cursor.bg,
		selection_bg = specs.Visual.bg,
		selection_fg = fg,
	}, term)
end

return M
