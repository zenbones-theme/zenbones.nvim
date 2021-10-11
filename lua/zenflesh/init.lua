local generator = require "zenbones.specs"
local p = require "zenflesh.palette"

return generator.generate(p, "zenflesh", generator.get_global_config "zenflesh")
