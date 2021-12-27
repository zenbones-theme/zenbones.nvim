local template = [[{
"name": "zenbonse",
"foreground": "$fg",
"background": "$bg",
"selectionBackground": "$selection_bg",
"cursorColor": "$cursor_bg",
"black": "$black",
"red": "$red",
"green": "$green",
"yellow": "$yellow",
"blue": "$blue",
"purple": "$magenta",
"cyan": "$cyan",
"white": "$white",
"brightBlack": "$bright_black",
"brightRed": "$bright_red",
"brightGreen": "$bright_green",
"brightYellow": "$bright_yellow",
"brightBlue": "$bright_blue",
"brightPurple": "$bright_magenta",
"brightCyan": "$bright_cyan",
"brightWhite": "$bright_white"
}
]]

local helpers = require "shipwright.transform.helpers"

---@diagnostic disable: undefined-global
-- selene: allow(undefined_variable)
run(
	{ specs, p, term },
	transform.colorscheme_to_term_colors,
	function(colors)
		return vim.tbl_extend("keep", colors, { name = name })
	end
	function(colors)
		local text = helpers.apply_template(template, colors)
		return { text }
	end,
	{ overwrite, string.format("extras/windows_terminal/%s.json", name) }
)
-- selene: deny(undefined_variable)
---@diagnostic enable: undefined-global
