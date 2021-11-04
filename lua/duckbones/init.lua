local lush = require "lush"
local generator = require "zenbones.specs"
local p = require("duckbones.palette").dark

local specs = generator.generate(p, "dark", generator.get_global_config("duckbones", "dark"))

return lush.extends({ specs }).with(function()
	---@diagnostic disable: undefined-global
	-- selene: allow(undefined_variable)
	return {
		Statement { specs.Statement, fg = p.blossom },
		Special { fg = p.leaf },
		PreProc { fg = p.sky },
	}
	-- selene: deny(undefined_variable)
	---@diagnostic enable: undefined-global
end)
