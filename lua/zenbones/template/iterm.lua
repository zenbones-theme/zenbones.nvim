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

return function(name, theme, palette, term)
	local colors = {
		["Ansi 0"] = term[1],
		["Ansi 1"] = term[2],
		["Ansi 2"] = term[3],
		["Ansi 3"] = term[4],
		["Ansi 4"] = term[5],
		["Ansi 5"] = term[6],
		["Ansi 6"] = term[7],
		["Ansi 7"] = term[8],
		["Ansi 8"] = term[9],
		["Ansi 9"] = term[10],
		["Ansi 10"] = term[11],
		["Ansi 11"] = term[12],
		["Ansi 12"] = term[13],
		["Ansi 13"] = term[14],
		["Ansi 14"] = term[15],
		["Ansi 15"] = term[16],
		Foreground = theme.Normal.fg,
		Background = theme.Normal.bg,
		Bold = term[9],
		Cursor = theme.Cursor.bg,
		["Cursor Text"] = theme.Cursor.fg,
		["Cursor Guide"] = theme.CursorLine.bg,
		Link = term[13],
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
