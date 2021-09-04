local lush = require "lush"
local theme = require "zenbones"

-- got from http://lua-users.org/wiki/StringInterpolation
function interp(s, tab)
	return (s:gsub("($%b{})", function(w)
		return tab[w:sub(3, -2)] or w
	end))
end

local function write_template(path, spec)
	print("[write template] " .. path)
	local template = io.open("_templates/" .. path ..".txt", "r"):read "*all"
	local content = interp(template, spec)
	local file = io.open(path, "w")
	file:write(content)
	file:close()
end

local function viml_build()
	local termcolors = ""
	for i, v in ipairs(require("zenbones.terminal").colors) do
		termcolors = termcolors .. string.format("let g:terminal_color_%s = '%s'\n", (i - 1), v.hex)
	end

	-- Compile lush table, concatenate to a single string, and remove blend property
	local vimcolors = table.concat(vim.fn.sort(lush.compile(theme, { exclude_keys = { "blend" } })), "\n")
	write_template("colors/zenbones.vim", {
		termcolors = termcolors,
		vimcolors = vimcolors
	})
end

local function build()
	viml_build()
end

return { build = build }
