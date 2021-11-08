local key_template = [[
	<key>$k Color</key>
]]
local color_template = [[
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>$b</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>$g</real>
		<key>Red Component</key>
		<real>$r</real>
	</dict>]]

local start_template = [[<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
]]
local end_template = [[

</dict>
</plist>]]

local helpers = require "shipwright.transform.helpers"

local function hex_to_rgb(hex)
	local _, r, g, b = hex:match "(.)(..)(..)(..)"
	r, g, b =
		string.format("%0.16f", (tonumber(r, 16) / 255)),
		string.format("%0.16f", (tonumber(g, 16) / 255)),
		string.format("%0.16f", (tonumber(b, 16) / 255))
	return { r = r, g = g, b = b }
end

local function key_to_xml(key, color)
	local xml = helpers.apply_template(key_template, { k = key })
	local rgb = hex_to_rgb(color.hex)
	xml = xml .. helpers.apply_template(color_template, rgb)
	return xml
end

local function to_iterm(colorscheme)
	local specs, term = unpack(colorscheme)
	local colors = {
		["Ansi 0"] = term.black,
		["Ansi 1"] = term.red,
		["Ansi 2"] = term.green,
		["Ansi 3"] = term.yellow,
		["Ansi 4"] = term.blue,
		["Ansi 5"] = term.magenta,
		["Ansi 6"] = term.cyan,
		["Ansi 7"] = term.white,
		["Ansi 8"] = term.bright_black,
		["Ansi 9"] = term.bright_red,
		["Ansi 10"] = term.bright_green,
		["Ansi 11"] = term.bright_yellow,
		["Ansi 12"] = term.bright_blue,
		["Ansi 13"] = term.bright_magenta,
		["Ansi 14"] = term.bright_cyan,
		["Ansi 15"] = term.bright_white,
		["Foreground"] = specs.Normal.fg,
		["Background"] = specs.Normal.bg,
		["Bold"] = term.bright_black,
		["Cursor"] = specs.Cursor.bg,
		["Cursor Text"] = specs.Cursor.fg,
		["Cursor Guide"] = specs.CursorLine.bg,
		["Link"] = term.bright_blue,
		["Selection"] = specs.Visual.bg,
		["Selected Text"] = specs.Normal.fg,
		["Badge"] = specs.Comment.fg,
		["Tab"] = specs.Normal.bg,
	}

	local template = start_template

	local xml_compiled = {}
	for k, c in pairs(colors) do
		table.insert(xml_compiled, key_to_xml(k, c))
	end

	template = template .. table.concat(vim.fn.sort(xml_compiled), "\n")
	template = template .. end_template

	return { template }
end

---@diagnostic disable: undefined-global
-- selene: allow(undefined_variable)
run({ specs, term }, to_iterm, { overwrite, string.format("extras/iterm/%s.itermcolors", name) })
-- selene: deny(undefined_variable)
---@diagnostic enable: undefined-global
