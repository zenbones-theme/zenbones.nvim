vim.g.colors_name = "zenwritten"

-- reset specs
package.loaded["zenwritten"] = nil

-- include our theme file and pass it to lush to apply
require "lush"(require "zenwritten")

local p = require("zenwritten.palette")[vim.opt.background:get()]
require("zenbones.term").apply_colors(p)
