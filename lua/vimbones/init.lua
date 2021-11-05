local lush = require "lush"
local generator = require "zenbones.specs"
local p = require("vimbones.palette").light

local specs = generator.generate(p, "light", generator.get_global_config("vimbones", "light"))

return lush.extends({ specs }).with(function()
	---@diagnostic disable: undefined-global
	-- selene: allow(undefined_variable)
	return {
		Number { fg = p.vim.de(20).da(26), gui = "italic" },
		Statement { fg = p.vim.da(24), gui = "bold" },
		PreProc { fg = p.vim.de(31).da(24) },
	}
	-- selene: deny(undefined_variable)
	---@diagnostic enable: undefined-global
end)
