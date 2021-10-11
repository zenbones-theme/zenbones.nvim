local lush = require "lush"
local bg = vim.opt.background:get()
local p = require("rosebones.palette")[bg]

local generator = require "zenbones.specs"
local specs = generator.generate(p, bg, generator.get_global_config("rosebones", bg))

return lush.extends({ specs }).with(function()
	return {
		Statement { fg = p.leaf, gui = "bold" },
		Special { fg = p.water, gui = "bold" },
		Type { fg = p.text },
	}
end)
