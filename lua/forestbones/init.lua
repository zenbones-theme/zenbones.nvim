local lush = require "lush"
local generator = require "zenbones.specs"
local bg = vim.opt.background:get()
local p = require("forestbones.palette")[bg]

local specs = generator.generate(p, bg, generator.get_global_config("forestbones", bg))

return lush.extends({ specs }).with(function()
	return {
		Statement { fg = p.rose },
		Special { fg = p.leaf },
		Type { fg = p.water },
	}
end)
