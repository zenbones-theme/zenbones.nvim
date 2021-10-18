if vim.g.colors_name then
	vim.api.nvim_command "highlight clear"
end

vim.g.colors_name = "zenwritten"

package.loaded["zenwritten"] = nil
require "lush"(require "zenwritten", { force_clean = false })

local p = require("zenwritten.palette")[vim.opt.background:get()]
require("zenbones.term").apply_colors(p)
