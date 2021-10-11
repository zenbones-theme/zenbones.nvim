local generator = require "zenbones.specs"
local p = require "zenbones.palette"

return generator.generate(p, "zenbones", generator.get_global_config "zenbones")
