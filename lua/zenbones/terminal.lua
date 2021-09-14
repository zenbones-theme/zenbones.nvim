local lush = require "lush"
local p = require "zenbones.palette"

local colors = {
	p.stone,
	p.rose,
	p.leaf,
	p.wood,
	p.water,
	p.blossom,
	p.sky,
	p.sand,
	p.stone.li(16),
	p.rose.sa(20).da(10),
	p.leaf.sa(20).da(10),
	p.wood.sa(18).da(10),
	p.water.sa(20).da(10),
	p.blossom.sa(24).da(10),
	p.sky.sa(20).da(10),
	p.sand.sa(4).da(10),
}

local M = {}

M.colors = colors

function M.setup()
	for i, v in ipairs(colors) do
		vim.g["terminal_color_" .. (i - 1)] = v.hex
	end
end

return M
