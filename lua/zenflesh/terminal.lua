local lush = require "lush"
local p = require "zenflesh.palette"

local colors = {
	p.sand,
	p.rose,
	p.leaf,
	p.wood,
	p.water,
	p.blossom,
	p.sky,
	p.stone,
	p.sand.sa(4).li(10),
	p.rose.sa(20).li(10),
	p.leaf.sa(20).li(10),
	p.wood.sa(18).li(10),
	p.water.sa(20).li(10),
	p.blossom.sa(24).li(10),
	p.sky.sa(20).li(10),
	p.stone.da(16),
}

local M = {}

M.colors = colors

function M.setup()
	for i, v in ipairs(colors) do
		vim.g["terminal_color_" .. (i - 1)] = v.hex
	end
end

return M
