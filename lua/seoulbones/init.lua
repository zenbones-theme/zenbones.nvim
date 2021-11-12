local lush = require "lush"
local generator = require "zenbones.specs"
local bg = vim.opt.background:get()
local p = require("seoulbones.palette")[bg]

local specs = generator.generate(p, bg, generator.get_global_config("seoulbones", bg))

if bg == "light" then
	return lush.extends({ specs }).with(function()
		---@diagnostic disable: undefined-global
		-- selene: allow(undefined_variable)
		return {
			Comment { specs.Comment, fg = p.leaf },
			Keyword { fg = p.rose.de(25), gui = "bold" },
			PreProc { fg = p.rose.de(40) },
			Conditional { fg = p.water },
			Type { fg = lush.hsluv "#727100" },
			Special { specs.Special, fg = p.blossom },
			Number { specs.Number, fg = p.orange },
			Delimiter { fg = p.wood.de(40).da(10) },
			String { specs.Constant, fg = p.water.de(40).da(10) },
		}
		-- selene: deny(undefined_variable)
		---@diagnostic enable: undefined-global
	end)
else
	return lush.extends({ specs }).with(function()
		---@diagnostic disable: undefined-global
		-- selene: allow(undefined_variable)
		return {
			Comment { specs.Comment, fg = lush.hsluv "#719872" },
			Keyword { fg = p.rose.de(12), gui = "bold" },
			PreProc { fg = p.rose.de(25) },
			Conditional { fg = p.water },
			Type { fg = lush.hsluv "#dfdebd" },
			Special { specs.Special, fg = p.blossom.li(36) },
			Number { specs.Number, fg = p.wood.de(20) },
			Delimiter { fg = p.wood.de(50).da(30) },
			String { specs.Constant, fg = p.water.de(20).li(12) },
		}
		-- selene: deny(undefined_variable)
		---@diagnostic enable: undefined-global
	end)
end
