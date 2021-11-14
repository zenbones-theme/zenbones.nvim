local function concat_config(prefix, suffixes)
	local config = {}
	for _, suffix in ipairs(suffixes) do
		config[suffix] = vim.g[prefix .. "_" .. suffix]
	end
	return config
end

local M = {}

--- Get global configuration as a table.
---@param prefix string e.g. "zenbones"
---@param base_bg string light or dark
function M.get_global_config(prefix, base_bg)
	if type(vim.g[prefix]) == "table" then
		return vim.g[prefix]
	end

	local common = concat_config(prefix, {
		"solid_vert_split",
		"solid_float_border",
		"solid_line_nr",
		"colorize_diagnostic_underline_text",
		"italic_comments",
		"transparent_background",
	})

	if base_bg == "light" then
		if vim.g[prefix .. "_dim_noncurrent_window"] then
			vim.notify(
				prefix .. "_dim_noncurrent_window is replaced by " .. prefix .. "_darken_noncurrent_window",
				vim.log.levels.WARN,
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
				"darken_cursor_line",
			}),
			common
		)
	elseif base_bg == "dark" then
		return vim.tbl_extend(
			"keep",
			concat_config(prefix, {
				"darkness",
				"lighten_noncurrent_window",
				"lighten_comments",
				"lighten_line_nr",
				"lighten_non_text",
				"lighten_cursor_line",
			}),
			common
		)
	else
		error(string.format([[Invalid base_bg value: '%s', must be 'light' or 'dark'.]], base_bg))
	end
end

--- Generate a specs given a palette.
---@param p table palette
---@param base_bg string light or dark
---@param opt? table
---@return table
function M.generate(p, base_bg, opt)
	return require("zenbones.specs." .. base_bg)(p, opt)
end

return M
