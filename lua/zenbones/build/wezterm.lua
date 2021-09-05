local template = [[# Zenbones
[colors]
foreground = "${fg}"
background = "${bg}"
cursor_bg = "${cursor_bg}"
cursor_border = "${cursor_border}"
cursor_fg = "${cursor_fg}"
selection_bg = "${selection_bg}"
selection_fg = "${selection_fg}"

ansi = ["${color0}", "${color1}", "${color2}", "${color3}", "${color4}", "${color5}", "${color6}", "${color7}"]
brights = ["${color8}", "${color9}", "${color10}", "${color11}", "${color12}", "${color13}", "${color14}", "${color15}"]
]]

local theme = require "zenbones"
local terminal = require "zenbones.terminal"

local values = {
	fg = theme.Normal.fg.hex,
	bg = theme.Normal.bg.hex,
	cursor_bg = theme.Cursor.bg.hex,
	cursor_border = theme.Cursor.fg.hex,
	cursor_fg = theme.Cursor.fg.hex,
	selection_bg = theme.Visual.bg.hex,
	selection_fg = theme.Normal.fg.hex,
}
for i, v in ipairs(terminal.colors) do
	values["color" .. (i - 1)] = v.hex
end

return { "extras/wezterm/Zenbones.toml", template, values }
