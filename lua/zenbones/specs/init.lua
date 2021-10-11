local M = {}

function M.get_global_config(prefix, base_bg)
	if base_bg == "light" then
		return {
			lightness = vim.g[prefix .. "_lightness"],
			comment_gui = vim.g[prefix .. "_italic_comments"] ~= false and "italic" or "NONE",
			dim_noncurrent_window = vim.g[prefix .. "_dim_noncurrent_window"],
			solid_vert_split = vim.g[prefix .. "_solid_vert_split"],
		}
	else
		return {
			darkness = vim.g[prefix .. "_darkness"],
			comment_gui = vim.g[prefix .. "_italic_comments"] ~= false and "italic" or "NONE",
			lighten_noncurrent_window = vim.g[prefix .. "_lighten_noncurrent_window"],
			solid_vert_split = vim.g[prefix .. "_solid_vert_split"],
		}
	end
end

function M.generate(p, base_bg, opt)
	base_bg = base_bg ~= nil and base_bg or "dark"
	return require("zenbones.specs." .. base_bg)(p, opt)
end

return M
