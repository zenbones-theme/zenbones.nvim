local lush = require "lush"
local generator = require "zenbones.specs"
local bg = vim.o.background
local p = require("zenwritten.palette")[bg]

local specs = generator.generate(p, bg, generator.get_global_config("zenwritten", bg))

return lush.extends({ specs }).with(function()
	---@diagnostic disable: undefined-global
	-- selene: allow(undefined_variable)
	return {
		Statement { fg = p.blossom },
		Special { fg = p.water },
		String { fg = p.leaf },
		ColorColumn { bg = p.bg1 },
		NavicText { fg = "#989fa7" },
	}
	-- selene: deny(undefined_variable)
	---@diagnostic enable: undefined-global
end)
