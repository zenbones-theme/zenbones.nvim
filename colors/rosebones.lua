vim.g.colors_name = "rosebones"

package.loaded["rosebones"] = nil
require "lush"(require "rosebones")

local p = require("rosebones.palette")[vim.opt.background:get()]
require("zenbones.term").apply_colors(p)
