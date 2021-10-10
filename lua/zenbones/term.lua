local M = {}

function M.colors_map(p)
	return {
		p.bg,
		p.rose,
		p.leaf,
		p.wood,
		p.water,
		p.blossom,
		p.sky,
		p.fg,
		p.bg1,
		p.rose1,
		p.leaf1,
		p.wood1,
		p.water1,
		p.blossom1,
		p.sky1,
		p.fg1,
	}
end

function M.apply_colors(p)
	local colors = M.colors_map(p)
	for i, v in ipairs(colors) do
		vim.g["terminal_color_" .. (i - 1)] = v.hex
	end
end

return M
