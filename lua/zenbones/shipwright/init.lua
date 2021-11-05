local M = {}

local function make_env(colorscheme)
	local builder = require "shipwright.builder"
	local env = builder.make_env()

	local specs = colorscheme.specs
	env.name = colorscheme.name

	vim.opt.background = colorscheme.background
	package.loaded[specs] = nil
	env.specs = require(specs)
	env.p = require(specs .. ".palette")[colorscheme.background]
	env.term = require("zenbones.term").colors_map(env.p)
	env.transform = require "zenbones.shipwright.transform"
	return env
end

local function make_build_fn(file)
	return loadfile(string.format("lua/zenbones/shipwright/runners/%s.lua", file))
end

local function make_runners(config)
	if not config.background then
		return {
			setfenv(
				make_build_fn(config.file),
				make_env {
					name = config.name .. "_light",
					specs = config.name,
					background = "light",
				}
			),
			setfenv(
				make_build_fn(config.file),
				make_env {
					name = config.name .. "_dark",
					specs = config.name,
					background = "dark",
				}
			),
		}
	end

	return {
		setfenv(
			make_build_fn(config.file),
			make_env {
				name = config.name,
				specs = config.name,
				background = config.background,
			}
		),
	}
end

M.run = function()
	local runner_files = { "alacritty", "kitty" }
	local colorschemes = { { name = "zenbones" }, { name = "neobones" } }
	for _, colorscheme in ipairs(colorschemes) do
		for _, file in ipairs(runner_files) do
			colorscheme.file = file
			for _, runner in ipairs(make_runners(colorscheme)) do
				assert(pcall(runner))
			end
		end
	end
end

return M
