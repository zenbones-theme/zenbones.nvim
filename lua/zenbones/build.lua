local util = require "zenbones.util"

local function build()
	util.build("zenbones", require "zenbones", require "zenbones.palette", require "zenbones.terminal")
	util.build("zenflesh", require "zenflesh", require "zenflesh.palette", require "zenflesh.terminal")

	vim.opt.background = "light"
	package.loaded["zenbones.palette"] = nil
	package.loaded["zenbones.terminal"] = nil
	package.loaded["zenbones"] = nil
	util.build(
		"neovim_light",
		require "zenbones.neovim",
		require "zenbones.neovim.palette",
		require "zenbones.neovim.terminal"
	)

	vim.opt.background = "dark"
	package.loaded["zenflesh.palette"] = nil
	package.loaded["zenflesh.terminal"] = nil
	package.loaded["zenflesh"] = nil
	util.build(
		"neovim_dark",
		require "zenbones.neovim",
		require "zenbones.neovim.palette",
		require "zenbones.neovim.terminal"
	)
end

return { build = build }
