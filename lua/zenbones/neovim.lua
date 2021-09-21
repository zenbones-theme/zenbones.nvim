local lush = require "lush"
local hsluv = lush.hsluv

-- modify base palette first (before requiring specs)
local palette = require "zenbones.neovim.palette"

-- extend specs using Lush
local base_name = require("zenbones.util").bg_to_base_name()
local theme = require(base_name)
local specs
if base_name == "zenbones" then
	specs = lush.extends({ theme }).with(function()
		return {
			helpHyperTextJump { fg = hsluv "#195174" }, -- --link-color
			helpOption { helpHyperTextJump },
			markdownUrl { helpHyperTextJump },
		}
	end)
else
	specs = lush.extends({ theme }).with(function()
		return {
			FloatBorder { fg = hsluv "#203f57" }, -- --border-color
			helpHyperTextJump { fg = hsluv "#8ec77e" }, -- --link-color
			helpOption { helpHyperTextJump },
			markdownUrl { helpHyperTextJump },
		}
	end)
end

return specs
