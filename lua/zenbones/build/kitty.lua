local template = [[# vim:ft=kitty
## name: zenbones
## license: MIT
## author: Michael Chris Lopez
## upstream: https://github.com/mcchrish/zenbones.nvim/raw/main/extras/kitty/zenbones.conf

background ${background}
foreground ${foreground}
selection_background ${selection_background}
selection_foreground ${selection_foreground}
url_color ${url_color}
cursor ${cursor}

# Tabs
active_tab_background ${active_tab_background}
active_tab_foreground ${active_tab_foreground}
inactive_tab_background ${inactive_tab_background}
inactive_tab_foreground ${inactive_tab_foreground}
#tab_bar_background ${tab_bar_background}

# normal
color0 ${color0}
color1 ${color1}
color2 ${color2}
color3 ${color3}
color4 ${color4}
color5 ${color5}
color6 ${color6}
color7 ${color7}

# bright
color8 ${color8}
color9 ${color9}
color10 ${color10}
color11 ${color11}
color12 ${color12}
color13 ${color13}
color14 ${color14}
color15 ${color15}
]]

local theme = require "zenbones"
local terminal = require "zenbones.terminal"

local bg = theme.Normal.bg.hex
local fg = theme.Normal.fg.hex
local values = {
	background = bg,
	foreground = fg,
	selection_background = theme.Visual.bg.hex,
	selection_foreground = fg,
	url_color = terminal.colors[14].hex,
	cursor = fg,
	active_tab_background = theme.Search.bg.hex,
	active_tab_foreground = fg,
	inactive_tab_background = theme.StatusLine.bg.hex,
	inactive_tab_foreground = fg,
}
for i, v in ipairs(terminal.colors) do
	values["color" .. (i - 1)] = v.hex
end

return { "extras/kitty/zenbones.conf", template, values }
