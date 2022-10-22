local lush = require "lush"
local generator = require "zenbones.specs"
local bg = vim.o.background
local p = require("seoulbones.palette")[bg]

local specs = generator.generate(p, bg, generator.get_global_config("seoulbones", bg))

if bg == "light" then
	return lush.extends({ specs }).with(function()
		---@diagnostic disable: undefined-global
		-- selene: allow(undefined_variable)
		return {
			Comment { specs.Comment, fg = p.leaf },
			Statement { specs.Statement, fg = p.water },
			Keyword { fg = p.rose.de(25), gui = "bold" },
			Exception { Keyword },
			PreProc { fg = p.rose.de(40) },
			Identifier { fg = p.fg },
			Function { fg = lush.hsluv("#727100").de(12).da(5) },
			Special { fg = p.blossom.de(30).da(10) },
			Number { specs.Number, fg = p.orange },
			String { specs.Constant, fg = p.water.de(40).da(8) },
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
			Statement { specs.Statement, fg = p.water },
			Keyword { fg = p.rose.de(12), gui = "bold" },
			Exception { Keyword },
			PreProc { fg = p.rose.de(25) },
			Identifier { fg = p.fg },
			Function { fg = lush.hsluv("#dfdebd").de(12) },
			Special { fg = p.blossom.li(26) },
			Number { specs.Number, fg = p.wood.de(30) },
			String { specs.Constant, fg = p.water.de(20).li(10) },
		}
		-- selene: deny(undefined_variable)
		---@diagnostic enable: undefined-global
	end)
end
