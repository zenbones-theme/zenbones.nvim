if vim.g.colors_name then
	vim.api.nvim_command "highlight clear"
end

vim.g.colors_name = "nordbones"
vim.opt.background = "dark"

package.loaded["nordbones"] = nil
require "lush"(require "nordbones", { force_clean = false })

local p = require("nordbones.palette").derived
require("zenbones.term").apply_colors(p)
