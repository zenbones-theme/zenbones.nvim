local lush = require "lush"
local hsluv = lush.hsluv
local M = {}

-- got from http://lua-users.org/wiki/StringInterpolation
function M.interp(s, tab)
	return (s:gsub("($%b{})", function(w)
		return tab[w:sub(3, -2)] or w
	end))
end

function M.bg_to_base_name()
	return vim.opt.background:get() == "light" and "zenbones" or "zenflesh"
end

function M.resolve_config(base_name)
	if base_name == "zenbones" then
		return {
			lightness = vim.g.zenbones_lightness,
			comment_gui = vim.g.zenbones_italic_comments ~= false and "italic" or "NONE",
			dim_noncurrent_window = vim.g.zenbones_dim_noncurrent_window,
			solid_vert_split = vim.g.zenbones_solid_vert_split,
		}
	elseif base_name == "zenflesh" then
		return {
			darkness = vim.g.zenflesh_darkness,
			comment_gui = vim.g.zenflesh_italic_comments ~= false and "italic" or "NONE",
			lighten_noncurrent_window = vim.g.zenflesh_lighten_noncurrent_window,
			solid_vert_split = vim.g.zenflesh_solid_vert_split,
		}
	else
		error "Unknown base_name"
	end
end

function M.palette_extend(p, base_name)
	if base_name == "zenbones" then
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
	elseif base_name == "zenflesh" then
		-- default
		p = vim.tbl_extend("keep", p, {
			bg = hsluv(39, 9, 9), -- sand
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
	else
		error "Unknown base_name"
	end
end

return M
