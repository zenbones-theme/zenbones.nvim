vim.g.colors_name = "neobones"

package.loaded["neobones"] = nil
require "lush"(require "neobones")

local p = require("neobones.palette")[vim.opt.background:get()]
require("zenbones.term").apply_colors(p)
