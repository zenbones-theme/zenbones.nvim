vim.g.colors_name = "tokyobones"

package.loaded["tokyobones"] = nil
require "lush"(require "tokyobones")

local p = require("tokyobones.palette")[vim.opt.background:get()]
require("zenbones.term").apply_colors(p)
