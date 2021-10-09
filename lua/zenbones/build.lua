local util = require "zenbones.util"

local function build()
	-- default
	package.loaded["zenbones"] = nil
	util.build("zenbones", require "zenbones", require "zenbones.palette", require("zenbones.term").colors, {})

	-- bright
	package.loaded["zenbones"] = nil
	vim.g.zenbones_lightness = "bright"
	util.build(
		"zenbones_bright",
		require "zenbones",
		require "zenbones.palette",
		require("zenbones.term").colors,
		{ exclude = { "vim", "lightline", "lualine" } }
	)
	vim.api.nvim_del_var "zenbones_lightness"

	-- dim
	package.loaded["zenbones"] = nil
	vim.g.zenbones_lightness = "dim"
	util.build(
		"zenbones_dim",
		require "zenbones",
		require "zenbones.palette",
		require("zenbones.term").colors,
		{ exclude = { "vim", "lightline", "lualine" } }
	)
	vim.api.nvim_del_var "zenbones_lightness"

	-- default
	package.loaded["zenflesh"] = nil
	util.build("zenflesh", require "zenflesh", require "zenflesh.palette", require("zenflesh.term").colors, {})

	-- stark
	package.loaded["zenflesh"] = nil
	vim.g.zenflesh_darkness = "stark"
	util.build(
		"zenflesh_stark",
		require "zenflesh",
		require "zenflesh.palette",
		require("zenflesh.term").colors,
		{ exclude = { "vim", "lightline", "lualine" } }
	)
	vim.api.nvim_del_var "zenflesh_darkness"

	-- warm
	package.loaded["zenflesh"] = nil
	vim.g.zenflesh_darkness = "warm"
	util.build(
		"zenflesh_warm",
		require "zenflesh",
		require "zenflesh.palette",
		require("zenflesh.term").colors,
		{ exclude = { "vim", "lightline", "lualine" } }
	)
	vim.api.nvim_del_var "zenflesh_darkness"

	-- neobones light
	package.loaded["zenbones.neobones"] = nil
	vim.opt.background = "light"
	util.build(
		"neobones_light",
		require "zenbones.neobones",
		require "zenbones.neobones.palette",
		require("zenbones.neobones.term").colors.zenbones,
		{ exclude = { "vim" } }
	)

	-- neobones dark
	package.loaded["zenbones.neobones"] = nil
	vim.opt.background = "dark"
	util.build(
		"neobones_dark",
		require "zenbones.neobones",
		require "zenbones.neobones.palette",
		require("zenbones.neobones.term").colors.zenflesh,
		{ exclude = { "vim" } }
	)
end

return { build = build }
