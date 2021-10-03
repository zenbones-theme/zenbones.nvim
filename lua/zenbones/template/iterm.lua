local util = require "zenbones.util"

local key_template = [[
	<key>${k} Color</key>
]]
local color_template = [[
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${g}</real>
		<key>Red Component</key>
		<real>${r}</real>
	</dict>]]

local start_template = [[<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
]]
local end_template = [[

</dict>
</plist>]]

local function hex_to_rgb(hex)
	local _, r, g, b = hex:match "(.)(..)(..)(..)"
	r, g, b =
		string.format("%0.16f", (tonumber(r, 16) / 255)),
		string.format("%0.16f", (tonumber(g, 16) / 255)),
		string.format("%0.16f", (tonumber(b, 16) / 255))
	return { r = r, g = g, b = b }
end

local function key_to_xml(key, color)
	local xml = util.interp(key_template, { k = key })
	local rgb = hex_to_rgb(color.hex)
	xml = xml .. util.interp(color_template, rgb)
	return xml
end

return function(name, theme, palette, terminal)
	local colors = {
		["Ansi 0"] = terminal.colors[1],
		["Ansi 1"] = terminal.colors[2],
		["Ansi 2"] = terminal.colors[3],
		["Ansi 3"] = terminal.colors[4],
		["Ansi 4"] = terminal.colors[5],
		["Ansi 5"] = terminal.colors[6],
		["Ansi 6"] = terminal.colors[7],
		["Ansi 7"] = terminal.colors[8],
		["Ansi 8"] = terminal.colors[9],
		["Ansi 9"] = terminal.colors[10],
		["Ansi 10"] = terminal.colors[11],
		["Ansi 11"] = terminal.colors[12],
		["Ansi 12"] = terminal.colors[13],
		["Ansi 13"] = terminal.colors[14],
		["Ansi 14"] = terminal.colors[15],
		["Ansi 15"] = terminal.colors[16],
		Foreground = theme.Normal.fg,
		Background = theme.Normal.bg,
		Bold = terminal.colors[9],
		Cursor = theme.Cursor.bg,
		["Cursor Text"] = theme.Cursor.fg,
		["Cursor Guide"] = theme.CursorLine.bg,
		Link = terminal.colors[13],
		Selection = theme.Visual.bg,
		["Selected Text"] = theme.Normal.fg,
		Badge = theme.Comment.fg,
		Tab = theme.Normal.bg,
	}

	local template = start_template

	local xml_compiled = {}
	for k, c in pairs(colors) do
		table.insert(xml_compiled, key_to_xml(k, c))
	end

	template = template .. table.concat(vim.fn.sort(xml_compiled), "\n")
	template = template .. end_template

	return { string.format("extras/iterm/%s.itermcolors", name), template, values }
end
