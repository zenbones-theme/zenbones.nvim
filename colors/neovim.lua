vim.g.colors_name = "neovim"

package.loaded["neobones"] = nil
require "lush"(require "neobones")
vim.api.nvim_echo(
	{ { "DEPRECATED(zenbones): neovim is deprecated. Please use neobones instead.", "WarningMsg" } },
	true,
	{}
)
