vim.g.colors_name = "neovim"

local base_name = vim.opt.background:get() == "light" and "zenbones" or "zenflesh"

-- reset base palette and specs
package.loaded[base_name .. ".palette"] = nil
package.loaded[base_name] = nil
package.loaded["zenbones.neovim"] = nil

require(base_name .. ".terminal").setup()

require "lush"(require "zenbones.neovim")
