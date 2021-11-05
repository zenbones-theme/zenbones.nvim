local M = {}

local function make_env(colorscheme)
	local builder = require "shipwright.builder"
	local env = builder.make_env()

	local name = colorscheme.name
	env.name = name

	vim.opt.background = "light"
	package.loaded[name] = nil
	env.specs = require(name)
	env.p = require(name .. ".palette").light
	env.term = require("zenbones.term").colors_map(env.p)
	env.transform = require "zenbones.shipwright.transform"
	return env
end

M.run = function()
	local runners = { "alacritty", "kitty" }
	for _, runner in ipairs(runners) do
		local build_fn = loadfile(string.format("lua/zenbones/shipwright/runners/%s.lua", runner))
		assert(pcall(setfenv(
			build_fn,
			make_env {
				name = "zenbones",
			}
		)))
	end
end

return M
