if vim.g.colors_name then
	vim.api.nvim_command "highlight clear"
end

vim.g.colors_name = "tokyobones"

package.loaded["tokyobones"] = nil
require "lush"(require "tokyobones", { force_clean = false })

local p = require("tokyobones.palette")[vim.opt.background:get()]
require("zenbones.term").apply_colors(p)
