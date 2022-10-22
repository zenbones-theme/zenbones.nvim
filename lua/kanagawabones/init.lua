local generator = require "zenbones.specs"
local bg = vim.o.background
local p = require("kanagawabones.palette")[bg]

return generator.generate(p, bg, generator.get_global_config("kanagawabones", bg))
