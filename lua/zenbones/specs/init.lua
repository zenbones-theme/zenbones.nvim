local M = {}

function M.get_global_config(prefix, base_bg)
	local common = {
		solid_vert_split = vim.g[prefix .. "_solid_vert_split"],
		solid_float_border = vim.g[prefix .. "_solid_float_border"],
		comment_gui = vim.g[prefix .. "_italic_comments"] ~= false and "italic" or "NONE",
	}
	if base_bg == "light" then
		return vim.tbl_extend("keep", {
			lightness = vim.g[prefix .. "_lightness"],
			dim_noncurrent_window = vim.g[prefix .. "_dim_noncurrent_window"],
			darken_comments = vim.g[prefix .. "_darken_comments"],
			darken_linenr = vim.g[prefix .. "_darken_linenr"],
		}, common)
	else
		return vim.tbl_extend("keep", {
			darkness = vim.g[prefix .. "_darkness"],
			lighten_noncurrent_window = vim.g[prefix .. "_lighten_noncurrent_window"],
			lighten_comments = vim.g[prefix .. "_lighten_comments"],
			lighten_linenr = vim.g[prefix .. "_lighten_linenr"],
		}, common)
	end
end

function M.generate(p, base_bg, opt)
	return require("zenbones.specs." .. base_bg)(p, opt)
end

return M
