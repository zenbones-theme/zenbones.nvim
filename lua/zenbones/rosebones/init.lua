local lush = require "lush"
local util = require "zenbones.util"

local base_name = util.bg_to_base_name()
local p = require "zenbones.rosebones.palette"

local specs = require(base_name .. ".specs").generate(p[base_name], util.resolve_config(base_name))

-- extend specs using Lush
return lush.extends({ specs }).with(function()
	return {
		Statement { fg = p.leaf, gui = "bold" },
		Special { fg = p.water, gui = "bold" },
		Type { fg = p.text },
	}
end)
