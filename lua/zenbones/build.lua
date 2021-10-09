local util = require "zenbones.util"

local function reset_base()
	package.loaded["zenbones.palette"] = nil
	package.loaded["zenbones.term"] = nil
	package.loaded["zenbones"] = nil

	package.loaded["zenflesh.palette"] = nil
	package.loaded["zenflesh.term"] = nil
	package.loaded["zenflesh"] = nil

	package.loaded["zenbones.neovim.palette"] = nil
	package.loaded["zenbones.neovim.term"] = nil
	package.loaded["zenbones.neovim"] = nil
end

local function build()
	-- default
	reset_base()
	util.build("zenbones", require "zenbones", require "zenbones.palette", require("zenbones.term").colors, {})

	-- bright
	reset_base()
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
	reset_base()
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
	reset_base()
	util.build("zenflesh", require "zenflesh", require "zenflesh.palette", require("zenflesh.term").colors, {})

	-- stark
	reset_base()
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
	reset_base()
	vim.g.zenflesh_darkness = "warm"
	util.build(
		"zenflesh_warm",
		require "zenflesh",
		require "zenflesh.palette",
		require("zenflesh.term").colors,
		{ exclude = { "vim", "lightline", "lualine" } }
	)
	vim.api.nvim_del_var "zenflesh_darkness"

	-- neovim light
	reset_base()
	vim.opt.background = "light"
	util.build(
		"neovim_light",
		require "zenbones.neovim",
		require "zenbones.neovim.palette",
		require("zenbones.neovim.term").colors.zenbones,
		{ exclude = { "vim" } }
	)

	-- neovim dark
	reset_base()
	vim.opt.background = "dark"
	util.build(
		"neovim_dark",
		require "zenbones.neovim",
		require "zenbones.neovim.palette",
		require("zenbones.neovim.term").colors.zenflesh,
		{ exclude = { "vim" } }
	)
end

return { build = build }
