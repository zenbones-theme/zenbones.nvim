local specs = require "zenflesh.specs"
local p = require "zenflesh.palette"
local config = require("zenbones.util").resolve_config "zenflesh"

return specs.generate(p, config)
