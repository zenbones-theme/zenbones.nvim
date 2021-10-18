if vim.g.colors_name then
	vim.api.nvim_command "highlight clear"
end

vim.g.colors_name = "rosebones"

package.loaded["rosebones"] = nil
require "lush"(require "rosebones", { force_clean = false })

local p = require("rosebones.palette")[vim.opt.background:get()]
require("zenbones.term").apply_colors(p)
