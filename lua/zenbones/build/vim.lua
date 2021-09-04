local lush = require "lush"
local theme = require "zenbones"
local terminal = require "zenbones.terminal"

local template = [[if exists('g:colors_name')
    highlight clear
    syntax reset
    set t_Co=256
endif

set background=light
let g:colors_name = 'zenbones'

${termcolors}
if has('terminal')
    let g:terminal_ansi_colors = [
                \ g:terminal_color_0,
                \ g:terminal_color_1,
                \ g:terminal_color_2,
                \ g:terminal_color_3,
                \ g:terminal_color_4,
                \ g:terminal_color_5,
                \ g:terminal_color_6,
                \ g:terminal_color_7,
                \ g:terminal_color_8,
                \ g:terminal_color_9,
                \ g:terminal_color_10,
                \ g:terminal_color_11,
                \ g:terminal_color_12,
                \ g:terminal_color_13,
                \ g:terminal_color_14,
                \ g:terminal_color_15
                \ ]
endif

${vimcolors}
]]

local termcolors = ""
for i, v in ipairs(terminal.colors) do
	termcolors = termcolors .. string.format("let g:terminal_color_%s = '%s'\n", (i - 1), v.hex)
end

-- Compile lush table, concatenate to a single string, and remove blend property
local vimcolors = table.concat(vim.fn.sort(lush.compile(theme, { exclude_keys = { "blend" } })), "\n")

return {
	"colors/zenbones.vim",
	template,
	{
		termcolors = termcolors,
		vimcolors = vimcolors,
	},
}
