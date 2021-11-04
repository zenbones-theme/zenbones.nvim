if vim.g.colors_name then
	vim.api.nvim_command "highlight clear"
end

vim.g.colors_name = "duckbones"
vim.opt.background = "dark"

package.loaded["duckbones"] = nil
require "lush"(require "duckbones", { force_clean = false })

local p = require("duckbones.palette").dark
require("zenbones.term").apply_colors(p)
