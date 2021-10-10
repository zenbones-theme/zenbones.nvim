vim.g.colors_name = "neobones"

package.loaded["neobones"] = nil
require "lush"(require "neobones")

local util = require "zenbones.util"
local base_name = util.bg_to_base_name()
local p = require("neobones.palette")[base_name]
require("zenbones.term").apply_colors(p)
