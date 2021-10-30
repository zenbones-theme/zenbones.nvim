local generator = require "zenbones.specs"
 local p = require "zenbones.palette"

return generator.generate(p, "light", generator.get_global_config("zenbones", "light"))
