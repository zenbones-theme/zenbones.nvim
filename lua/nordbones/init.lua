local lush = require "lush"
local generator = require "zenbones.specs"
local p = require "nordbones.palette"

local specs = generator.generate(p.dark, "dark", generator.get_global_config("nordbones", "dark"))

return lush.extends({ specs }).with(function()
	---@diagnostic disable: undefined-global
	-- selene: allow(undefined_variable)
	return {
		Number { fg = p.base.nord7, gui = "italic" },
		Identifier { fg = p.dark.fg },
		Function { fg = p.base.nord8 },
		Statement { fg = p.base.nord9 },
		Type { fg = p.base.nord10 },
	}
	-- selene: deny(undefined_variable)
	---@diagnostic enable: undefined-global
end)
