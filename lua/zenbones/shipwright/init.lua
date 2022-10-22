local M = {}

local function make_specs(specs_name, ness)
	local background = vim.o.background
	package.loaded[specs_name] = nil
	if ness == nil then
		return require(specs_name)
	end
	vim.g[specs_name .. "_" .. background .. "ness"] = ness
	local specs = require(specs_name)
	vim.g[specs_name .. "_" .. background .. "ness"] = nil
	return specs
end

local function make_env(colorscheme)
	local specs_name = colorscheme.specs
	local builder = require "shipwright.builder"
	local p = require(specs_name .. ".palette")[colorscheme.background]
	local env = {
		name = colorscheme.name,
		specs_name = specs_name,
		p = p,
		background = colorscheme.background,
		description = colorscheme.description,
		term = require("zenbones.term").colors_map(p),
		transform = require "zenbones.shipwright.transform",
	}

	vim.o.background = colorscheme.background
	env.specs = make_specs(specs_name)
	local ness = colorscheme.background == "light" and { "dim", "bright" } or { "stark", "warm" }
	env["specs_" .. ness[1]] = make_specs(specs_name, ness[1])
	env["specs_" .. ness[2]] = make_specs(specs_name, ness[2])

	return builder.make_env(env)
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
					description = config.description,
				}
			),
			setfenv(
				make_build_fn(config.file),
				make_env {
					name = config.name .. "_dark",
					specs = config.name,
					background = "dark",
					description = config.description,
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
				description = config.description,
			}
		),
	}
end

M.run = function()
	local runner_files = {
		"vim",
		"iterm",
		"alacritty",
		"kitty",
		"wezterm",
		"tmux",
		"windows_terminal",
		"foot",
		"lualine",
		"lightline",
	}
	local colorschemes = vim.fn.json_decode(vim.fn.readfile "zenbones.json")
	for _, colorscheme in ipairs(colorschemes) do
		for _, file in ipairs(runner_files) do
			if not vim.tbl_contains(colorscheme.exclude or {}, file) then
				colorscheme.file = file
				for _, runner in ipairs(make_runners(colorscheme)) do
					assert(pcall(runner))
				end
			end
		end
	end
end

return M
