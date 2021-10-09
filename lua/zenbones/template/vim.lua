local template = [[" This file is auto-generated from lua/zenbones/template/vim.lua
if exists('g:colors_name')
    highlight clear
    syntax reset
    set t_Co=256
endif

let g:colors_name = '${name}'

if !exists('g:zenbones_compat')
    let g:zenbones_compat = !has('nvim')
endif

${termcolors}
if g:zenbones_compat == 0
    let g:colors_name = '${name}'
    lua package.loaded["${specs_path}"] = nil
    lua require "lush"(require "${specs_path}", { force_clean = false })
    finish
else
${vimcolors}
endif

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
]]

local lush = require "lush"
return function(name, theme, palette, term)
	local termcolors = ""
	for i, v in ipairs(term) do
		termcolors = termcolors .. string.format("let g:terminal_color_%s = '%s'\n", (i - 1), v.hex)
	end

	-- Compile lush table, concatenate to a single string, and remove blend property
	local vimcolors = table.concat(vim.fn.sort(lush.compile(theme, { exclude_keys = { "blend" } })), "\n")

	return {
		string.format("colors/%s.vim", name),
		template,
		{
			name = name,
			specs_path = name,
			termcolors = termcolors,
			vimcolors = vimcolors,
		},
	}
end
