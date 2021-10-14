vim.g.colors_name = "zenwritten"

package.loaded["zenwritten"] = nil
require "lush"(require "zenwritten")

local p = require("zenwritten.palette")[vim.opt.background:get()]
require("zenbones.term").apply_colors(p)
