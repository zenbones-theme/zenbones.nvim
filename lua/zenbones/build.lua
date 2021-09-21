local util = require "zenbones.util"

local function build()
	local templates = { "vim", "kitty", "alacritty", "wezterm", "lualine", "lightline", "tmux" }
	for _, t in ipairs(templates) do
		util.build("zenbones", require "zenbones", require "zenbones.palette", require "zenbones.terminal")
		util.build("zenflesh", require "zenflesh", require "zenflesh.palette", require "zenflesh.terminal")
	end
end

return { build = build }
