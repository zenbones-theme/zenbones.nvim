vim.g.colors_name = "rosebones"

-- reset specs
package.loaded["zenbones.rosebones"] = nil

local util = require "zenbones.util"
local base_name = util.bg_to_base_name()

-- include our theme file and pass it to lush to apply
require "lush"(require "zenbones.rosebones")

local base_name = require("zenbones.util").bg_to_base_name()
require("zenbones.neovim.term").setup(base_name)
