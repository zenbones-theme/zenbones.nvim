if vim.g.colors_name then
	vim.api.nvim_command "highlight clear"
end

vim.g.colors_name = "forestbones"

package.loaded["forestbones"] = nil
require "lush"(require "forestbones", { force_clean = false })

local p = require("forestbones.palette")[vim.opt.background:get()]
require("zenbones.term").apply_colors(p)
