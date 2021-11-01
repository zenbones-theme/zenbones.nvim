local template = [[" This file is auto-generated from lua/zenbones/template/vim.lua
function! ${name}#load()

${termcolors}
${vimcolors}
highlight! link StatusLineTerm StatusLine
highlight! link StatusLineTermNC StatusLineNC

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

endfunction
]]

return function(name, specs, p)
	local lush = require "lush"
	local term = require("zenbones.term").colors_map(p)
	local termcolors = ""
	for i, v in ipairs(term) do
		termcolors = termcolors .. string.format("let g:terminal_color_%s = '%s'\n", (i - 1), v.hex)
	end

	-- Compile lush table, concatenate to a single string, and remove blend property
	local compiled = lush.compile(specs, {
		exclude_keys = { "blend" },
		copy_cterm_from_gui = true,
	})
	local vimcolors = table.concat(vim.fn.sort(compiled), "\n")

	return {
		string.format("autoload/%s.vim", name),
		template,
		{
			name = name,
			specs_path = name,
			termcolors = termcolors,
			vimcolors = vimcolors,
		},
	}
end
