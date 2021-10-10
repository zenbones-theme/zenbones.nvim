local template = [[# This file is auto-generated from lua/zenbones/template/alacritty.lua
# ${name} alacritty colors
colors:
  # Default colors
  primary:
    background: '${bg}'
    foreground: '${fg}'
  # Normal colors
  normal:
    black:   '${color0}'
    red:     '${color1}'
    green:   '${color2}'
    yellow:  '${color3}'
    blue:    '${color4}'
    magenta: '${color5}'
    cyan:    '${color6}'
    white:   '${color7}'
  # Bright colors
  bright:
    black:   '${color8}'
    red:     '${color9}'
    green:   '${color10}'
    yellow:  '${color11}'
    blue:    '${color12}'
    magenta: '${color13}'
    cyan:    '${color14}'
    white:   '${color15}'
]]

return function(name, specs, p)
	local term = require("zenbones.term").colors_map(p)
	local values = {
		name = name,
		bg = specs.Normal.bg.hex,
		fg = specs.Normal.fg.hex,
	}
	for i, v in ipairs(term) do
		values["color" .. (i - 1)] = v.hex
	end

	return { string.format("extras/alacritty/%s.yml", name), template, values }
end
