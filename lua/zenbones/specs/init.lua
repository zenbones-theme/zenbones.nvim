local M = {}

function M.get_global_config(base_name, prefix)
	prefix = type(prefix) == "string" and prefix or base_name
	if base_name == "zenbones" then
		return {
			lightness = vim.g[prefix .. "_lightness"],
			comment_gui = vim.g[prefix .. "_italic_comments"] ~= false and "italic" or "NONE",
			dim_noncurrent_window = vim.g[prefix .. "_dim_noncurrent_window"],
			solid_vert_split = vim.g[prefix .. "_solid_vert_split"],
		}
	elseif base_name == "zenflesh" then
		return {
			darkness = vim.g[prefix .. "_darkness"],
			comment_gui = vim.g[prefix .. "_italic_comments"] ~= false and "italic" or "NONE",
			lighten_noncurrent_window = vim.g[prefix .. "_lighten_noncurrent_window"],
			solid_vert_split = vim.g[prefix .. "_solid_vert_split"],
		}
	else
		error "Unknown base_name"
	end
end

function M.generate(p, base_name, opt)
	if base_name == "zenbones" then
		return require "zenbones.specs.zenbones"(p, opt)
	elseif base_name == "zenflesh" then
		return require "zenbones.specs.zenflesh"(p, opt)
	else
		error "Unknown base_name"
	end
end

return M
