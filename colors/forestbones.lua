vim.g.colors_name = "forestbones"

-- reset specs
package.loaded["forestbones"] = nil

-- include our theme file and pass it to lush to apply
require "lush"(require "forestbones")

local p = require("forestbones.palette")[vim.opt.background:get()]
require("zenbones.term").apply_colors(p)
