local lush = require "lush"
local generator = require "zenbones.specs"
local bg = vim.o.background
local p = require("forestbones.palette")[bg]

local specs = generator.generate(p, bg, generator.get_global_config("forestbones", bg))

return lush.extends({ specs }).with(function()
	---@diagnostic disable: undefined-global
	-- selene: allow(undefined_variable)
	return {
		Statement { fg = p.wood },
		Special { fg = p.water },
		String { fg = p.leaf },
		PreProc { fg = p.sky },
		Type { fg = p.water },
		ColorColumn { bg = p.bg },
		NavicText { fg = "#b4ae9c" },
		SnacksPickerBorder { specs.FloatBorder }, -- --border-color
	}
	-- selene: deny(undefined_variable)
	---@diagnostic enable: undefined-global
end)
