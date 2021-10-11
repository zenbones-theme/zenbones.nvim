vim.g.colors_name = "rosebones"

-- reset specs
package.loaded["rosebones"] = nil

-- include our theme file and pass it to lush to apply
require "lush"(require "rosebones")

local p = require("rosebones.palette")[vim.opt.background:get()]
require("zenbones.term").apply_colors(p)
