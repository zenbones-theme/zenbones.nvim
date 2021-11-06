local lush = require "lush"
local hsluv = lush.hsluv
local generator = require "zenbones.specs"
local p = require("zenburned.palette").dark

local specs = generator.generate(p, "dark", generator.get_global_config("zenburned", "dark"))

return lush.extends({ specs }).with(function()
	---@diagnostic disable: undefined-global
	-- selene: allow(undefined_variable)
	return {
		Statement { specs.Statement, fg = hsluv "#dca3a3" },
		Special { fg = hsluv "#efef8f" },
		PreProc { fg = hsluv "#ffcfaf" },
	}
	-- selene: deny(undefined_variable)
	---@diagnostic enable: undefined-global
end)
