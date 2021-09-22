local lush = require "lush"
local hsl = lush.hsl

-- modify base palette (before requiring specs)
local palette = require "zenbones.neovim.palette"

-- extend specs using Lush
local base_name = require("zenbones.util").bg_to_base_name()
local theme = require(base_name)
local specs
if base_name == "zenbones" then
	specs = lush.extends({ theme }).with(function()
		return {
			helpHyperTextJump { fg = hsl "#195174" }, -- --link-color
			helpOption { helpHyperTextJump },
			markdownUrl { helpHyperTextJump },
		}
	end)
else
	specs = lush.extends({ theme }).with(function()
		return {
			FloatBorder { fg = hsl "#203f57" }, -- --border-color
			helpHyperTextJump { fg = hsl "#8ec77e" }, -- --link-color
			helpOption { helpHyperTextJump },
			markdownUrl { helpHyperTextJump },
		}
	end)
end

return specs
