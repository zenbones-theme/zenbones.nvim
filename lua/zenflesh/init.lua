local util = require "zenbones.util"
local specs = require "zenflesh.specs"
local p = require "zenflesh.palette"
local config = util.resolve_config "zenflesh"

return specs.generate(p, config)
