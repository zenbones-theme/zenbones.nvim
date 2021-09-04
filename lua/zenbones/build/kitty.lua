local theme = require "zenbones"
local terminal = require "zenbones.terminal"

local bg = theme.Normal.bg.hex
local fg = theme.Normal.fg.hex
local specs = {
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
	specs["color" .. (i - 1)] = v.hex
end

return { "extras/kitty/zenbones.conf", specs }
