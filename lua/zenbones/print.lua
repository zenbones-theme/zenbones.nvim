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
	vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)

	vim.cmd('tabnew')
	local win = vim.api.nvim_get_current_win()
	vim.api.nvim_win_set_buf(win, buf)
end

return M
