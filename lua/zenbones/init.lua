local specs = require "zenbones.specs"
local p = require "zenbones.palette"
local config = require("zenbones.util").resolve_config "zenbones"

return specs.generate(p, config)
