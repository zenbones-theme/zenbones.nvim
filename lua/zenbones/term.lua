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

--- Get an array of hex colors in the order of g:terminal_color_*.
---@param p table
---@return table
function M.colors_array(p)
	local colors = M.colors_map(p)
	return {
		colors.black.hex,
		colors.red.hex,
		colors.green.hex,
		colors.yellow.hex,
		colors.blue.hex,
		colors.magenta.hex,
		colors.cyan.hex,
		colors.white.hex,
		colors.bright_black.hex,
		colors.bright_red.hex,
		colors.bright_green.hex,
		colors.bright_yellow.hex,
		colors.bright_blue.hex,
		colors.bright_magenta.hex,
		colors.bright_cyan.hex,
		colors.bright_white.hex,
	}
end

--- Apply a palette to g:terminal_color_*.
---@param p table
---@return nil
function M.apply_colors(p)
	local colors_array = M.colors_array(p)

	for idx, color in ipairs(colors_array) do
		vim.g["terminal_color_" .. idx - 1] = color
	end
end

return M
