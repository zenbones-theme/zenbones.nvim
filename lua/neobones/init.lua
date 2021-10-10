local lush = require "lush"
local util = require "zenbones.util"
local hsluv = lush.hsluv

local base_name = util.bg_to_base_name()
local p = require("neobones.palette")[base_name]

-- extend specs using Lush
if base_name == "zenbones" then
	local specs = require("zenbones.specs").generate(p, util.resolve_config("zenbones"))
	return lush.extends({ specs }).with(function()
		return {
			helpHyperTextJump { fg = hsluv "#195174" }, -- --link-color
			helpOption { helpHyperTextJump },
			markdownUrl { helpHyperTextJump },
		}
	end)
else
	local specs = require("zenflesh.specs").generate(p, util.resolve_config("zenflesh"))
	return lush.extends({ specs }).with(function()
		return {
			FloatBorder { fg = hsluv "#203f57" }, -- --border-color
			helpHyperTextJump { fg = hsluv "#8ec77e" }, -- --link-color
			helpOption { helpHyperTextJump },
			markdownUrl { helpHyperTextJump },
		}
	end)
end
