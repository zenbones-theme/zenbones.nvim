if vim.g.colors_name then
	vim.api.nvim_command "highlight clear"
end

vim.g.colors_name = "neobones"

package.loaded["neobones"] = nil
require "lush"(require "neobones", { force_clean = false })

local p = require("neobones.palette")[vim.opt.background:get()]
require("zenbones.term").apply_colors(p)
