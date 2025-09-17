local lush = require "lush"
local generator = require "zenbones.specs"
local bg = vim.o.background
local p = require("tokyobones.palette")[bg]

local specs = generator.generate(p, bg, generator.get_global_config("tokyobones", bg))

return lush.extends({ specs }).with(function()
	---@diagnostic disable: undefined-global
	-- selene: allow(undefined_variable)
	return {
		Statement { fg = p.blossom, gui = "bold" },
		Number { fg = p.sky },
		TSConstant { fg = p.orange },
		TSKeyword { fg = p.blossom, gui = "italic" },
		TSConstBuiltin { fg = p.sky1 },
		PreProc { fg = p.blossom },
		Special { fg = p.water },
		String { fg = p.leaf },
		ColorColumn { bg = p.bg1 },
		NavicText { fg = "#9faad3" },
	}
	-- selene: deny(undefined_variable)
	---@diagnostic enable: undefined-global
end)
