local util = require "zenbones.util"

local function write_template(path, template, values)
	print("[write template] " .. path)
	local content = util.interp(template, values)
	local file = io.open(path, "w")
	file:write(content)
	file:close()
end

local function build()
	local templates = { "vim", "kitty", "alacritty", "wezterm", "lualine", "lightline", "tmux" }
	for _, t in ipairs(templates) do
		write_template(
			unpack(
				require("zenbones.build." .. t)(
					"zenbones",
					require "zenbones",
					require "zenbones.palette",
					require "zenbones.terminal"
				)
			)
		)
		write_template(
			unpack(
				require("zenbones.build." .. t)(
					"zenflesh",
					require "zenflesh",
					require "zenflesh.palette",
					require "zenflesh.terminal"
				)
			)
		)
	end
end

return { build = build }
