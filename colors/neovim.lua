vim.g.colors_name = "neovim"

local base_name = require("zenbones.util").bg_to_base_name()

-- reset base palette and specs
package.loaded[base_name .. ".palette"] = nil
package.loaded[base_name] = nil
package.loaded["zenbones.neovim.palette"] = nil
package.loaded["zenbones.neovim"] = nil

require("zenbones.neovim.terminal").setup()

-- include our theme file and pass it to lush to apply
require "lush"(require "zenbones.neovim")
