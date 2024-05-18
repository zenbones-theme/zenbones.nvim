local lush = require "lush"
local generator = require "zenbones.specs"
local bg = vim.o.background
local p = require("zenbones.palette")[bg]

local specs = generator.generate(p, bg, generator.get_global_config("zenbones", bg))

return lush.extends({ specs }).with(function()
	---@diagnostic disable: undefined-global
	-- selene: allow(undefined_variable)
	return {
		Statement { fg = p.blossom },
		Special { fg = p.water },
		String { fg = p.leaf },
		Constant { fg = p.leaf },
	}
	-- selene: deny(undefined_variable)
	---@diagnostic enable: undefined-global
end)
