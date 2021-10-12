local lush = require "lush"
local generator = require "zenbones.specs"
local bg = vim.opt.background:get()
local p = require("rosebones.palette")[bg]

local specs = generator.generate(p, bg, generator.get_global_config("rosebones", bg))

return lush.extends({ specs }).with(function()
	return {
		Statement { fg = p.leaf },
		Special { fg = p.water },
		Type { fg = p.text },
	}
end)
