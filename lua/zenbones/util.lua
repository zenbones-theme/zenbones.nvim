local M = {}

M.version = "4.12.0" -- x-release-please-version

--- Apply a zenbones colorscheme based on g:colors_name and &background.
---@return nil
function M.apply_colorscheme_without_cache()
	local colors_name = vim.g.colors_name
	package.loaded[colors_name] = nil
	require "lush"(require(colors_name), { force_clean = false })
	local p = require(colors_name .. ".palette")[vim.o.background]
	require("zenbones.term").apply_colors(p)
end

-- TODO add an option to opt-out caching
function M.apply_colorscheme()
	local colors_name = vim.g.randombones_colors_name or vim.g.colors_name
	-- TODO don't call get_global_config twice
	local opts = require("zenbones.specs").get_global_config(colors_name, vim.o.background)
	local inputs = {
		version = M.version,
		opts = opts,
	}

	local cache = M.cache.load(colors_name)

	local colors, palette
	if cache and vim.deep_equal(inputs, cache.inputs) then
		colors = cache.colors
		palette = cache.palette
	else
		colors = M.compile_colorscheme(colors_name, opts)
		palette = M.compile_palette(colors_name, vim.o.background)
		local ok, msg = M.cache.write(colors_name, {
			inputs = inputs,
			colors = colors,
			palette = palette,
		})
		if not ok then
			vim.notify("zenbones.nvim failed to cache colors: " .. msg, vim.log.levels.WARN)
		end
	end

	for group, attrs in pairs(colors) do
		vim.api.nvim_set_hl(0, group, attrs)
	end

	for idx, color in ipairs(palette) do
		vim.g["terminal_color_" .. idx - 1] = color
	end
end

function M.compile_colorscheme(colors_name)
	local spec = require(colors_name)
	return require("lush.compiler")(spec)
end

function M.compile_palette(colors_name, bg)
	local p = require(colors_name .. ".palette")[bg]
	return require("zenbones.term").get_colors_idx(p)
end

M.cache = {}

function M.cache.file(colors_name)
	return vim.fn.stdpath("cache") .. "/" .. colors_name .. ".msgpack"
end

function M.cache.load(colors_name)
	local ok, cache = pcall(function()
		local file = io.open(M.cache.file(colors_name), "rb")
		local content = file:read("*a")
		file:close()
		return vim.mpack.decode(content)
	end)

	return ok and cache or nil
end

function M.cache.write(colors_name, cache)
	return pcall(function()
		local file, msg = io.open(M.cache.file(colors_name), "wb+")
		if not file then
			error(msg)
		end
		file:write(vim.mpack.encode(cache))
		file:close()
	end)
end

function M.cache.clear()
	for _, colorscheme in ipairs(M.get_colorscheme_list()) do
		local path = M.cache.file(colorscheme.name)
		vim.uv.fs_unlink(path)
	end
end

function M.get_colorscheme_list()
	local file = io.open(vim.api.nvim_get_runtime_file("zenbones.json", false)[1], "r")
	if not file then
		error "zenbones.json not found"
	end
	local content = file:read "*a"
	file:close()
	return vim.json.decode(content)
end

function M.get_colorscheme(name)
	local colorschemes = M.get_colorscheme_list()
	local colorscheme = nil
	for _, c in ipairs(colorschemes) do
		if c.name == name then
			colorscheme = c
		end
	end
	if colorscheme == nil then
		error(string.format("Invalid name %s", name))
	end
	return colorscheme
end

function M.get_lualine_theme(name)
	local colorscheme = M.get_colorscheme(name)
	local ness_config = vim.g[name] and vim.g[name][string.format("%sness", colorscheme.background)]
		or vim.g[string.format("%s_%sness", name, colorscheme.background)]
	local ness = ness_config or "default"

	if colorscheme.background then
		return require(string.format("lualine.themes.%s_%s", name, ness))
	else
		return require(string.format("lualine.themes.%s_%s_%s", name, vim.o.background, ness))
	end
end

--- Auto-fill a palette with the default palette.
---@param p table palette
---@param base_bg string light or dark
---@return table<string, table> palette
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
	elseif base_bg == "dark" then
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
	else
		error(string.format([[Invalid base_bg value: '%s', must be 'light' or 'dark'.]], base_bg))
	end
end

return M
