local t = require "zenbones"
local terminal = require "zenbones.terminal"

local M = {}

function M.print_terminal_colors()
	local lines = {}

	table.insert(lines, "Terminal colors")
	table.insert(lines, "foreground: " .. t.Normal.fg.hex)
	table.insert(lines, "background: " .. t.Normal.bg.hex)

	for i, v in ipairs(terminal.colors) do
		table.insert(lines, "ansi color" .. (i - 1) .. ": " .. v.hex)
	end

	table.insert(lines, "cursor foreground: " .. t.Cursor.fg.hex)
	table.insert(lines, "cursor background: " .. t.Cursor.bg.hex)

	table.insert(lines, "inactive cursor foreground: " .. t.lCursor.fg.hex)
	table.insert(lines, "inactive cursor background: " .. t.lCursor.bg.hex)
	table.insert(lines, "selection background: " .. t.Visual.bg.hex)

	local buf = vim.api.nvim_create_buf(false, true)
	local win = vim.api.nvim_open_win(buf, true, {
		relative = "editor",
		width = vim.api.nvim_win_get_width(0) - 2,
		height = vim.api.nvim_win_get_height(0) - 2,
		row = 1,
		col = 1,
		style = "minimal",
	})
	vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)
end

return M
