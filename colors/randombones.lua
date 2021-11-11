if vim.g.colors_name then
	vim.api.nvim_command [[highlight clear]]
end

vim.g.colors_name = "randombones"

local colorschemes = vim.fn.json_decode(vim.fn.readfile(vim.fn.expand "<sfile>:h:h" .. "/colorschemes.json"))

math.randomseed(os.time())
local index = math.random(#colorschemes)
local colorscheme = colorschemes[index]

vim.g.randombones_colors_name = colorscheme.name

if colorscheme.background then
	vim.opt.background = colorscheme.background
end

require("zenbones.util").apply_colorscheme()
