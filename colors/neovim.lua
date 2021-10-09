vim.g.colors_name = "neovim"

-- reset specs
package.loaded["zenbones.neovim"] = nil

-- include our theme file and pass it to lush to apply
require "lush"(require "zenbones.neovim")

local base_name = require("zenbones.util").bg_to_base_name()
require("zenbones.neovim.term").setup(base_name)
