local lush = require "lush"
local util = require "zenbones.util"
local hsluv = lush.hsluv

local bg = vim.opt.background:get()
local p = require("neobones.palette")[bg]

local generator = require "zenbones.specs"
local specs = generator.generate(p, bg, generator.get_global_config("neobones", bg))

if bg == "light" then
	return lush.extends({ specs }).with(function()
		return {
			helpHyperTextJump { fg = hsluv "#195174" }, -- --link-color
			helpOption { helpHyperTextJump },
			markdownUrl { helpHyperTextJump },
		}
	end)
else
	return lush.extends({ specs }).with(function()
		return {
			FloatBorder { fg = hsluv "#203f57" }, -- --border-color
			helpHyperTextJump { fg = hsluv "#8ec77e" }, -- --link-color
			helpOption { helpHyperTextJump },
			markdownUrl { helpHyperTextJump },
		}
	end)
end
