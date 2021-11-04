if vim.g.colors_name then
	vim.api.nvim_command "highlight clear"
end

vim.g.colors_name = "zenburned"
vim.opt.background = "dark"

package.loaded["zenburned"] = nil
require "lush"(require "zenburned", { force_clean = false })

local p = require("zenburned.palette").dark
require("zenbones.term").apply_colors(p)
