vim.g.colors_name = "neobones"

-- reset specs
package.loaded["zenbones.neobones"] = nil

-- include our theme file and pass it to lush to apply
require "lush"(require "zenbones.neobones")

local base_name = require("zenbones.util").bg_to_base_name()
require("zenbones.neobones.term").setup(base_name)
