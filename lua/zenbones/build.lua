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

local colorschemes = {
	{
		name = "zenbones",
		palette = require "zenbones.palette",
	},

	{
		name = "zenbones_bright",
		specs = "zenbones",
		palette = require "zenbones.palette",
		setup = function()
			vim.g.zenbones_lightness = "bright"
		end,
		cleanup = function()
			vim.api.nvim_del_var "zenbones_lightness"
		end,
		opt = {
			exclude = { "vim", "lightline", "lualine" },
		},
	},

	{
		name = "zenbones_dim",
		specs = "zenbones",
		palette = require "zenbones.palette",
		setup = function()
			vim.g.zenbones_lightness = "dim"
		end,
		cleanup = function()
			vim.api.nvim_del_var "zenbones_lightness"
		end,
		opt = {
			exclude = { "vim", "lightline", "lualine" },
		},
	},

	{
		name = "zenflesh",
		palette = require "zenflesh.palette",
	},

	{
		name = "zenflesh_stark",
		specs = "zenflesh",
		palette = require "zenflesh.palette",
		setup = function()
			vim.g.zenflesh_darkness = "stark"
		end,
		cleanup = function()
			vim.api.nvim_del_var "zenflesh_darkness"
		end,
		opt = {
			exclude = { "vim", "lightline", "lualine" },
		},
	},

	{
		name = "zenflesh_warm",
		specs = "zenflesh",
		palette = require "zenflesh.palette",
		setup = function()
			vim.g.zenflesh_darkness = "warm"
		end,
		cleanup = function()
			vim.api.nvim_del_var "zenflesh_darkness"
		end,
		opt = {
			exclude = { "vim", "lightline", "lualine" },
		},
	},

	{
		name = "neobones_light",
		specs = "neobones",
		palette = require("neobones.palette").light,
		setup = function()
			vim.opt.background = "light"
		end,
		opt = {
			exclude = { "vim" },
		},
	},

	{
		name = "neobones_dark",
		specs = "neobones",
		palette = require("neobones.palette").dark,
		setup = function()
			vim.opt.background = "dark"
		end,
		opt = {
			exclude = { "vim" },
		},
	},

	{
		name = "zenwritten_light",
		specs = "zenwritten",
		palette = require("zenwritten.palette").light,
		setup = function()
			vim.opt.background = "light"
		end,
		opt = {
			exclude = { "vim" },
		},
	},

	{
		name = "zenwritten_dark",
		specs = "zenwritten",
		palette = require("zenwritten.palette").dark,
		setup = function()
			vim.opt.background = "dark"
		end,
		opt = {
			exclude = { "vim" },
		},
	},

	{
		name = "rosebones_light",
		specs = "rosebones",
		palette = require("rosebones.palette").light,
		setup = function()
			vim.opt.background = "light"
		end,
		opt = {
			exclude = { "vim", "alacritty", "iterm", "kitty", "tmux", "wezterm" },
		},
	},

	{
		name = "rosebones_dark",
		specs = "rosebones",
		palette = require("rosebones.palette").dark,
		setup = function()
			vim.opt.background = "dark"
		end,
		opt = {
			exclude = { "vim", "alacritty", "iterm", "kitty", "tmux", "wezterm" },
		},
	},

	{
		name = "forestbones_light",
		specs = "forestbones",
		palette = require("forestbones.palette").light,
		setup = function()
			vim.opt.background = "light"
		end,
		opt = {
			exclude = { "vim", "alacritty", "iterm", "kitty", "tmux", "wezterm" },
		},
	},

	{
		name = "forestbones_dark",
		specs = "forestbones",
		palette = require("forestbones.palette").dark,
		setup = function()
			vim.opt.background = "dark"
		end,
		opt = {
			exclude = { "vim", "alacritty", "iterm", "kitty", "tmux", "wezterm" },
		},
	},

	{
		name = "tokyobones_light",
		specs = "tokyobones",
		palette = require("tokyobones.palette").light,
		setup = function()
			vim.opt.background = "light"
		end,
		opt = {
			exclude = { "vim", "alacritty", "iterm", "kitty", "tmux", "wezterm" },
		},
	},

	{
		name = "tokyobones_dark",
		specs = "tokyobones",
		palette = require("tokyobones.palette").dark,
		setup = function()
			vim.opt.background = "dark"
		end,
		opt = {
			exclude = { "vim", "alacritty", "iterm", "kitty", "tmux", "wezterm" },
		},
	},

	{
		name = "nordbones",
		palette = require("nordbones.palette").derived,
		opt = {
			exclude = { "vim", "alacritty", "iterm", "kitty", "tmux", "wezterm" },
		},
	},
}

function build_from(colorscheme)
	if colorscheme.setup then
		colorscheme.setup()
	end
	local specs = colorscheme.specs or colorscheme.name
	package.loaded[specs] = nil
	build(colorscheme.name, require(specs), colorscheme.palette, colorscheme.opt or {})
	if colorscheme.cleanup then
		colorscheme.cleanup()
	end
end

local M = {}

function M.run()
	for _i, colorscheme in ipairs(colorschemes) do
		build_from(colorscheme)
	end
end

return M
