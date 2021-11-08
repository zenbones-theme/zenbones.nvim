local M = {}

--- Map palette to 16 ansi colors.
---@param p table
---@return table
function M.colors_map(p)
	return {
		black = p.bg,
		red = p.rose,
		green = p.leaf,
		yellow = p.wood,
		blue = p.water,
		magenta = p.blossom,
		cyan = p.sky,
		white = p.fg,
		bright_black = p.bg1,
		bright_red = p.rose1,
		bright_green = p.leaf1,
		bright_yellow = p.wood1,
		bright_blue = p.water1,
		bright_magenta = p.blossom1,
		bright_cyan = p.sky1,
		bright_white = p.fg1,
	}
end

--- Apply a palette to g:terminal_color_*.
---@param p table
---@return nil
function M.apply_colors(p)
	local colors = M.colors_map(p)
	vim.g.terminal_color_0 = colors.black.hex
	vim.g.terminal_color_1 = colors.red.hex
	vim.g.terminal_color_2 = colors.green.hex
	vim.g.terminal_color_3 = colors.yellow.hex
	vim.g.terminal_color_4 = colors.blue.hex
	vim.g.terminal_color_5 = colors.magenta.hex
	vim.g.terminal_color_6 = colors.cyan.hex
	vim.g.terminal_color_7 = colors.white.hex
	vim.g.terminal_color_8 = colors.bright_black.hex
	vim.g.terminal_color_9 = colors.bright_red.hex
	vim.g.terminal_color_10 = colors.bright_green.hex
	vim.g.terminal_color_11 = colors.bright_yellow.hex
	vim.g.terminal_color_12 = colors.bright_blue.hex
	vim.g.terminal_color_13 = colors.bright_magenta.hex
	vim.g.terminal_color_14 = colors.bright_cyan.hex
	vim.g.terminal_color_15 = colors.bright_white.hex
end

return M
