vim.g.colors_name = "rosebones"

-- reset specs
package.loaded["zenbones.rosebones"] = nil

-- include our theme file and pass it to lush to apply
require "lush"(require "zenbones.rosebones")

local util = require "zenbones.util"
local base_name = util.bg_to_base_name()
local p = require("zenbones.rosebones.palette")[base_name]
require("zenbones.term").apply_colors(p)
