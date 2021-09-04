local lush = require "lush"
local theme = require "zenbones"
local terminal = require "zenbones.terminal"

local termcolors = ""
for i, v in ipairs(terminal.colors) do
	termcolors = termcolors .. string.format("let g:terminal_color_%s = '%s'\n", (i - 1), v.hex)
end

-- Compile lush table, concatenate to a single string, and remove blend property
local vimcolors = table.concat(vim.fn.sort(lush.compile(theme, { exclude_keys = { "blend" } })), "\n")

return {
	"colors/zenbones.vim",
	{
		termcolors = termcolors,
		vimcolors = vimcolors,
	},
}
