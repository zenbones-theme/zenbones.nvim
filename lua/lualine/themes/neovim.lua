local background = vim.opt.background:get()

return require("lualine.themes.neovim_" .. background)
