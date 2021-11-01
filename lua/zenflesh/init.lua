local generator = require "zenbones.specs"
local p = require "zenflesh.palette"

vim.notify(
	"zenflesh is deprecated. Please use zenbones and set background=dark.",
	vim.log.levels.WARN,
	{ title = "zenbones" }
)
return generator.generate(p, "dark", generator.get_global_config "zenflesh")
