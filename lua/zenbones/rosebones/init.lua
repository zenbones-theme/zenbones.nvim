local lush = require "lush"

-- modify base palette (before requiring specs)
local palette = require "zenbones.rosebones.palette"

-- extend specs using Lush
local base_name = require("zenbones.util").bg_to_base_name()
local theme = require(base_name)

local specs = lush.extends({ theme }).with(function()
	return {
		Statement { fg = palette.leaf, gui = "bold" },
		Special { fg = palette.water, gui = "bold" },
		Type { fg = palette.text },
	}
end)

return specs
