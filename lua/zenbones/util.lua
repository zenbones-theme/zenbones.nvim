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

function M.build(name, specs, palette, terminal, options)
	local exclude = options.exclude or {}
	local templates = { "vim", "iterm", "kitty", "alacritty", "wezterm", "lualine", "lightline", "tmux" }
	for _, t in ipairs(templates) do
		if not vim.tbl_contains(exclude, t) then
			write_template(unpack(require("zenbones.template." .. t)(name, specs, palette, terminal)))
		end
	end
end

function M.resolve_config(base_name)
	if base_name == "zenbones" then
		return {
			lightness = vim.g.zenbones_lightness,
			comment_gui = vim.g.zenbones_italic_comments ~= false and "italic" or "NONE",
			dim_noncurrent_window = vim.g.zenbones_dim_noncurrent_window,
			solid_vert_split = vim.g.zenbones_solid_vert_split,
		}
	elseif base_name == "zenflesh" then
		return {
			darkness = vim.g.zenflesh_darkness,
			comment_gui = vim.g.zenflesh_italic_comments ~= false and "italic" or "NONE",
			lighten_noncurrent_window = vim.g.zenflesh_lighten_noncurrent_window,
			solid_vert_split = vim.g.zenflesh_solid_vert_split,
		}
	else
		error "Unknown base_name"
	end
end

return M
