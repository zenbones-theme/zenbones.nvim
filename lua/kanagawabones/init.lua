local lush = require "lush"
local generator = require "zenbones.specs"
local bg = vim.o.background
local p = require("kanagawabones.palette")[bg]

local specs = generator.generate(p, bg, generator.get_global_config("kanagawabones", bg))

return lush.extends({ specs }).with(function()
	---@diagnostic disable: undefined-global
	-- selene: allow(undefined_variable)
	return {
		Statement { fg = p.wood },
		Special { fg = p.water },
		String { fg = p.leaf },
		ColorColumn { bg = p.bg1 },
		NavicText { fg = "#b0ac96" },
		SnacksPickerBorder { specs.FloatBorder }, -- --border-color
	}
	-- selene: deny(undefined_variable)
	---@diagnostic enable: undefined-global
end)

-- bg = hsluv "#1f1f28",
-- fg = hsluv "#dcd7ba",
-- leaf = hsluv "#98bb6c",
-- water = hsluv "#7fb4ca",
-- rose = hsluv "#e46876",
-- wood = hsluv "#e6c384",
-- blossom = hsluv "#957fb8",
