local M = {}

-- got from http://lua-users.org/wiki/StringInterpolation
function M.interp(s, tab)
	return (s:gsub("($%b{})", function(w)
		return tab[w:sub(3, -2)] or w
	end))
end

function M.bg_to_base_name()
	return vim.opt.background:get() == "light" and "zenbones" or "zenflesh"
end

local function write_template(path, template, values)
	print("[write template] " .. path)
	local content = M.interp(template, values)
	local file = io.open(path, "w")
	file:write(content)
	file:close()
end

function M.build(name, specs, palette, terminal)
	local templates = { "vim", "kitty", "alacritty", "wezterm", "lualine", "lightline", "tmux" }
	for _, t in ipairs(templates) do
		write_template(unpack(require("zenbones.template." .. t)(name, specs, palette, terminal)))
	end
end

return M
