if vim.g.colors_name then
	vim.api.nvim_command [[highlight clear]]
end

vim.g.colors_name = "randombones_dark"

local util = require "zenbones.util"
local colorschemes = util.get_colorscheme_list()

math.randomseed(os.time())

local colorscheme = colorschemes[1]
while true do
	local index = math.random(#colorschemes)
	colorscheme = colorschemes[index]
	if colorscheme.background ~= "light" then
		break
	end
end

vim.g.randombones_colors_name = colorscheme.name
vim.o.background = "dark"

util.apply_colorscheme()
