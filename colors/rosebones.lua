vim.g.colors_name = "rosebones"

local base_name = require("zenbones.util").bg_to_base_name()

-- reset base palette and specs
package.loaded[base_name .. ".palette"] = nil
package.loaded[base_name] = nil
package.loaded["zenbones.rosebones.palette"] = nil
package.loaded["zenbones.rosebones"] = nil

-- include our theme file and pass it to lush to apply
require "lush"(require "zenbones.rosebones")

require("zenbones.rosebones.terminal").setup()
