local lush = require "lush"
local generator = require "zenbones.specs"
local bg = vim.o.background
local p = require("rosebones.palette")[bg]

local specs = generator.generate(p, bg, generator.get_global_config("rosebones", bg))

return lush.extends({ specs }).with(function()
	---@diagnostic disable: undefined-global
	-- selene: allow(undefined_variable)
	return {
		Statement { fg = p.leaf },
		Special { fg = p.water },
		Type { fg = p.text },
	}
	-- selene: deny(undefined_variable)
	---@diagnostic enable: undefined-global
end)
