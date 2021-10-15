local M = {}

-- got from http://lua-users.org/wiki/StringInterpolation
function M.interp(s, tab)
	return (s:gsub("($%b{})", function(w)
		return tab[w:sub(3, -2)] or w
	end))
end

function M.palette_extend(p, base_bg)
	local lush = require "lush"
	local hsluv = lush.hsluv
	if base_bg == "light" then
		p = vim.tbl_extend("keep", p, {
			bg = hsluv(39, 12, 94), -- sand
			fg = hsluv(230, 30, 22), -- stone
			leaf = hsluv(112, 72, 42),
			water = hsluv(236, 84, 40),
			rose = hsluv(4, 70, 40),
			wood = hsluv(26, 80, 40),
			blossom = hsluv(318, 42, 42),
			sky = hsluv(204, 80, 53),
		})
		return vim.tbl_extend("keep", p, {
			bg1 = p.bg.sa(4).da(16),
			bg_bright = p.bg.abs_li(3).sa(6),
			bg_dim = p.bg.abs_da(3).de(12),
			rose1 = p.rose.sa(20).da(16),
			leaf1 = p.leaf.sa(20).da(16),
			wood1 = p.wood.sa(18).da(16),
			water1 = p.water.sa(20).da(16),
			blossom1 = p.blossom.sa(24).da(16),
			sky1 = p.sky.sa(20).da(16),
			fg1 = p.fg.li(22),
		})
	else
		-- default
		p = vim.tbl_extend("keep", p, {
			bg = hsluv(39, 12, 9), -- sand
			fg = hsluv(230, 10, 76), -- stone
			rose = hsluv(6, 62, 60),
			leaf = hsluv(111, 47, 61),
			wood = hsluv(32, 47, 58),
			water = hsluv(236, 64, 61),
			blossom = hsluv(318, 32, 58),
			sky = hsluv(204, 61, 64),
		})
		-- extended
		return vim.tbl_extend("keep", p, {
			bg1 = p.bg.sa(4).li(16),
			bg_stark = p.bg.abs_da(3).sa(8),
			bg_warm = p.bg.abs_li(3).de(12),
			rose1 = p.rose.sa(20).li(16),
			leaf1 = p.leaf.sa(20).li(16),
			wood1 = p.wood.sa(18).li(16),
			water1 = p.water.sa(20).li(16),
			blossom1 = p.blossom.sa(24).li(16),
			sky1 = p.sky.sa(20).li(16),
			fg1 = p.fg.da(22),
		})
	end
end

return M
