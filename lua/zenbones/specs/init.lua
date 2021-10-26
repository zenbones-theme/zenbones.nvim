local M = {}

function concat_config(prefix, suffixes)
	local config = {}
	for i, suffix in ipairs(suffixes) do
		config[suffix] = vim.g[prefix .. "_" .. suffix]
	end
	return config
end

function M.get_global_config(prefix, base_bg)
	local common = concat_config(prefix, {
		"solid_vert_split",
		"solid_float_border",
		"solid_line_nr",
		"italic_comments",
	})

	if base_bg == "light" then
		if vim.g[prefix .. "_dim_noncurrent_window"] then
			vim.notify(
				prefix .. "_dim_noncurrent_window is replaced by " .. prefix .. "_darken_noncurrent_window",
				vim.log.levels.ERROR,
				{ title = "zenbones" }
			)
		end
		return vim.tbl_extend(
			"keep",
			concat_config(prefix, {
				"lightness",
				"darken_noncurrent_window",
				"darken_comments",
				"darken_line_nr",
				"darken_non_text",
			}),
			common
		)
	else
		return vim.tbl_extend(
			"keep",
			concat_config(prefix, {
				"darkness",
				"lighten_noncurrent_window",
				"lighten_comments",
				"lighten_line_nr",
				"lighten_non_text",
			}),
			common
		)
	end
end

function M.generate(p, base_bg, opt)
	return require("zenbones.specs." .. base_bg)(p, opt)
end

return M
