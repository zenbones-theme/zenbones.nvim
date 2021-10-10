local generator = require "zenflesh.specs"
local p = require "zenflesh.palette"

return generator.generate(p, generator.get_global_config())
