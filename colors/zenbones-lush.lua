vim.g.colors_name = 'zenbones'
package.loaded["zenbones"] = nil
require "lush"(require "zenbones")
vim.api.nvim_echo(
	{ { "DEPRECATED(zenbones): zenbones-lush is deprecated. Please use zenbones instead.", "WarningMsg" } },
	true,
	{}
)
