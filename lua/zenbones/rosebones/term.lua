local palette = require "zenbones.rosebones.palette"

local M = { colors = {} }

local p = palette.zenbones
M.colors.zenbones = {
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

p = palette.zenflesh
M.colors.zenflesh = {
	p.bg,
	p.rose,
	p.leaf,
	p.wood,
	p.water,
	p.blossom,
	p.sky,
	p.fg,
	p.bg.sa(4).li(16),
	p.rose.sa(20).li(16),
	p.leaf.sa(20).li(16),
	p.wood.sa(18).li(16),
	p.water.sa(20).li(16),
	p.blossom.sa(24).li(16),
	p.sky.sa(20).li(16),
	p.fg.da(22),
}

function M.setup(base_name)
	for i, v in ipairs(M.colors[base_name]) do
		vim.g["terminal_color_" .. (i - 1)] = v.hex
	end
end

return M
