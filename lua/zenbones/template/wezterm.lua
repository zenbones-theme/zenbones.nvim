local template = [[# This file is auto-generated from lua/zenbones/template/wezterm.lua
# ${name}
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

return function(name, theme, palette, term)
	local name = name:sub(1, 1):upper() .. name:sub(2)

	local values = {
		name = name,
		fg = theme.Normal.fg.hex,
		bg = theme.Normal.bg.hex,
		cursor_bg = theme.Cursor.bg.hex,
		cursor_border = theme.Cursor.fg.hex,
		cursor_fg = theme.Cursor.fg.hex,
		selection_bg = theme.Visual.bg.hex,
		selection_fg = theme.Normal.fg.hex,
	}
	for i, v in ipairs(term) do
		values["color" .. (i - 1)] = v.hex
	end

	return { string.format("extras/wezterm/%s.toml", name), template, values }
end
