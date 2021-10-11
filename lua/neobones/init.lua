local lush = require "lush"
local util = require "zenbones.util"
local hsluv = lush.hsluv

local base_name = util.bg_to_base_name()
local p = require("neobones.palette")[base_name]
local generator = require "zenbones.specs"
local specs = generator.generate(p, base_name, generator.get_global_config(base_name, "neobones"))

if base_name == "zenbones" then
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
