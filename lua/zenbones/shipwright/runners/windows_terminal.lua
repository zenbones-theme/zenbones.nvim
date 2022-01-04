---@diagnostic disable: undefined-global
-- selene: allow(undefined_variable)
run({ specs, p, term }, transform.colorscheme_to_term_colors, function(colors)
	return vim.tbl_extend("keep", colors, {
		name = name,
	})
end, contrib.windows_terminal, { overwrite, string.format("extras/windows_terminal/%s.json", name) })
-- selene: deny(undefined_variable)
---@diagnostic enable: undefined-global
