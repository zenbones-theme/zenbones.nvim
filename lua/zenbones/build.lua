local util = require "zenbones.util"

local function write_template(path, template, values)
	print("[write template] " .. path)
	local content = util.interp(template, values)
	local file = io.open(path, "w")
	file:write(content)
	file:close()
end

function build(name, specs, palette, options)
	local exclude = options.exclude or {}
	local templates = { "vim", "iterm", "kitty", "alacritty", "wezterm", "lualine", "lightline", "tmux" }
	for _, t in ipairs(templates) do
		if not vim.tbl_contains(exclude, t) then
			write_template(unpack(require("zenbones.template." .. t)(name, specs, palette)))
		end
	end
end

local M = {}

function M.run()
	-- default
	package.loaded["zenbones"] = nil
	local p = require "zenbones.palette"
	build("zenbones", require "zenbones", p, {})

	-- bright
	package.loaded["zenbones"] = nil
	vim.g.zenbones_lightness = "bright"
	build(
		"zenbones_bright",
		require "zenbones",
		require "zenbones.palette",
		{ exclude = { "vim", "lightline", "lualine" } }
	)
	vim.api.nvim_del_var "zenbones_lightness"

	-- dim
	package.loaded["zenbones"] = nil
	vim.g.zenbones_lightness = "dim"
	build(
		"zenbones_dim",
		require "zenbones",
		require "zenbones.palette",
		{ exclude = { "vim", "lightline", "lualine" } }
	)
	vim.api.nvim_del_var "zenbones_lightness"

	-- default
	package.loaded["zenflesh"] = nil
	build("zenflesh", require "zenflesh", require "zenflesh.palette", {})

	-- stark
	package.loaded["zenflesh"] = nil
	vim.g.zenflesh_darkness = "stark"
	build(
		"zenflesh_stark",
		require "zenflesh",
		require "zenflesh.palette",
		{ exclude = { "vim", "lightline", "lualine" } }
	)
	vim.api.nvim_del_var "zenflesh_darkness"

	-- warm
	package.loaded["zenflesh"] = nil
	vim.g.zenflesh_darkness = "warm"
	build(
		"zenflesh_warm",
		require "zenflesh",
		require "zenflesh.palette",
		{ exclude = { "vim", "lightline", "lualine" } }
	)
	vim.api.nvim_del_var "zenflesh_darkness"

	-- neobones light
	package.loaded["neobones"] = nil
	vim.opt.background = "light"
	build("neobones_light", require "neobones", require("neobones.palette").zenbones, { exclude = { "vim" } })

	-- neobones dark
	package.loaded["neobones"] = nil
	vim.opt.background = "dark"
	build("neobones_dark", require "neobones", require("neobones.palette").zenflesh, { exclude = { "vim" } })
end

return M
