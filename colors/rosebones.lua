vim.g.colors_name = "rosebones"

-- reset specs
package.loaded["zenbones.rosebones"] = nil

local util = require "zenbones.util"
local base_name = util.bg_to_base_name()

-- include our theme file and pass it to lush to apply
require "lush"(require "zenbones.rosebones")

require("zenbones.rosebones.terminal").setup(base_name)
