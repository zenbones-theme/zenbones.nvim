local specs = require "zenflesh.specs"
local p = require "zenflesh.palette"

return specs.generate(p, {
	darkness = vim.g.zenflesh_darkness,
	comment_gui = vim.g.zenflesh_italic_comments ~= false and "italic" or "NONE",
	lighten_noncurrent_window = vim.g.zenflesh_lighten_noncurrent_window,
	solid_vert_split = vim.g.zenflesh_solid_vert_split,
})
-- vi:nowrap
