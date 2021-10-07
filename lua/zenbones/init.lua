local specs = require "zenbones.specs"
local p = require "zenbones.palette"

return specs.generate(p, {
	lightness = vim.g.zenbones_lightness,
	comment_gui = vim.g.zenbones_italic_comments ~= false and "italic" or "NONE",
	dim_noncurrent_window = vim.g.zenbones_dim_noncurrent_window,
	solid_vert_split = vim.g.zenbones_solid_vert_split,
})
