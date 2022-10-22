if vim.g.colors_name then
	vim.api.nvim_command [[highlight clear]]
end

vim.g.colors_name = "randombones"

local util = require "zenbones.util"
local colorschemes = util.get_colorscheme_list()

math.randomseed(os.time())
local index = math.random(#colorschemes)
local colorscheme = colorschemes[index]

vim.g.randombones_colors_name = colorscheme.name

if colorscheme.background then
	vim.o.background = colorscheme.background
end

util.apply_colorscheme()
