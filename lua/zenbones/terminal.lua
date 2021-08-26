local lush = require "lush"
local c = require "zenbones.colors"

local colors = {
	c.stone,
	c.rose,
	c.leaf,
	c.wood,
	c.water,
	c.blossom,
	c.sky,
	c.sand,
	c.stone.li(16),
	c.rose.sa(20).da(8),
	c.leaf.sa(20).da(8),
	c.wood.sa(18).da(8),
	c.water.sa(20).da(8),
	c.blossom.sa(24).da(6),
	c.sky.sa(20).da(6),
	c.sand.sa(8).da(10),
}

local M = { }

M.colors = colors

function M.setup()
	for i, v in ipairs(colors) do
		vim.g["terminal_color_" .. (i - 1)] = v.hex
	end
end

return M
