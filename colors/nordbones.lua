vim.g.colors_name = "nordbones"
vim.opt.background = "dark"

package.loaded["nordbones"] = nil
require "lush"(require "nordbones")

local p = require("nordbones.palette").derived
require("zenbones.term").apply_colors(p)
