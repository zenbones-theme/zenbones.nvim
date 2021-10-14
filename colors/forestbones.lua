vim.g.colors_name = "forestbones"

package.loaded["forestbones"] = nil
require "lush"(require "forestbones")

local p = require("forestbones.palette")[vim.opt.background:get()]
require("zenbones.term").apply_colors(p)
