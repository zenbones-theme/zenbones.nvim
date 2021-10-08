vim.g.colors_name = "rosebones"

-- reset specs
package.loaded["zenbones.rosebones"] = nil

-- include our theme file and pass it to lush to apply
require "lush"(require "zenbones.rosebones")

-- require("zenbones.rosebones.terminal").setup()
