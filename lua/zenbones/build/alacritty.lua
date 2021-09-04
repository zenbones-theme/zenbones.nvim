local template = [[# Zenbones Alacritty Colors
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

local theme = require "zenbones"
local terminal = require "zenbones.terminal"

local values = {
	bg = theme.Normal.bg.hex,
	fg = theme.Normal.fg.hex,
}
for i, v in ipairs(terminal.colors) do
	values["color" .. (i - 1)] = v.hex
end

return { "extras/alacritty/zenbones.yml", template, values }
