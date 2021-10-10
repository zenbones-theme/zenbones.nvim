vim.g.colors_name = 'zenflesh'
package.loaded["zenflesh"] = nil
require "lush"(require "zenflesh")
vim.api.nvim_echo(
	{ { "DEPRECATED(zenbones): zenflesh-lush is deprecated. Please use zenflesh instead.", "WarningMsg" } },
	true,
	{}
)
