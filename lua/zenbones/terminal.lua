local p = require "zenbones.palette"

local colors = {
	p.bg,
	p.rose,
	p.leaf,
	p.wood,
	p.water,
	p.blossom,
	p.sky,
	p.fg,
	p.bg.sa(4).da(16),
	p.rose.sa(20).da(16),
	p.leaf.sa(20).da(16),
	p.wood.sa(18).da(16),
	p.water.sa(20).da(16),
	p.blossom.sa(24).da(16),
	p.sky.sa(20).da(16),
	p.fg.li(22),
}

local M = {}

M.colors = colors

function M.setup()
	for i, v in ipairs(colors) do
		vim.g["terminal_color_" .. (i - 1)] = v.hex
	end
end

return M
