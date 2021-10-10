local generator = require "zenbones.specs"
local p = require "zenbones.palette"

return generator.generate(p, generator.get_global_config())
