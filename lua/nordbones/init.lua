local lush = require "lush"
local generator = require "zenbones.specs"
local p = require "nordbones.palette"

local specs = generator.generate(p.derived, "dark", generator.get_global_config("nordbones", "dark"))

return lush.extends({ specs }).with(function()
	return {
		Number { fg = p.base.nord7, gui = "italic" },
		Identifer { fg = p.derived.fg },
		Function { fg = p.base.nord8 },
		Statement { fg = p.base.nord9 },
		Type { fg = p.base.nord10 },
	}
end)
