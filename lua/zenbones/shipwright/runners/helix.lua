local function hex(color)
	if type(color) == "string" then
		return color
	end
	return color.hex
end

local function fmt_style(fg, bg, mods)
	local parts = {}
	if fg then
		table.insert(parts, string.format('fg = "%s"', fg))
	end
	if bg then
		table.insert(parts, string.format('bg = "%s"', bg))
	end
	if mods and #mods > 0 then
		local mod_strs = {}
		for _, m in ipairs(mods) do
			table.insert(mod_strs, string.format('"%s"', m))
		end
		table.insert(parts, string.format("modifiers = [%s]", table.concat(mod_strs, ", ")))
	end
	return "{ " .. table.concat(parts, ", ") .. " }"
end

local function parse_gui(gui_str)
	if not gui_str or gui_str == "" or gui_str == "NONE" then
		return {}
	end
	local mods = {}
	for mod in gui_str:gmatch("[^,]+") do
		mod = mod:match("^%s*(.-)%s*$")
		-- Helix supports: bold, dim, italic, underlined, slow_blink, rapid_blink, reversed, hidden, crossed_out
		if mod == "bold" or mod == "italic" or mod == "underline" then
			if mod == "underline" then
				table.insert(mods, "underlined")
			else
				table.insert(mods, mod)
			end
		elseif mod == "strikethrough" then
			table.insert(mods, "crossed_out")
		end
	end
	return mods
end

local function spec_style(group)
	local fg = group.fg and group.fg ~= "NONE" and hex(group.fg) or nil
	local bg = group.bg and group.bg ~= "NONE" and hex(group.bg) or nil
	local mods = parse_gui(group.gui)
	return fmt_style(fg, bg, mods)
end

local function fg_style(color, mods)
	return fmt_style(hex(color), nil, mods)
end

local function bg_style(color)
	return fmt_style(nil, hex(color), nil)
end

local function fg_bg_style(fg, bg, mods)
	return fmt_style(hex(fg), hex(bg), mods)
end

local function underline_style(color)
	return string.format('{ underline = { color = "%s", style = "curl" } }', hex(color))
end

local function build_helix_theme(colorscheme)
	local s, _ = unpack(colorscheme)
	local lines = {}

	local function add(scope, style)
		table.insert(lines, string.format('"%s" = %s', scope, style))
	end

	local function add_bare(scope, style)
		table.insert(lines, string.format('%s = %s', scope, style))
	end

	local function add_comment(text)
		table.insert(lines, "")
		table.insert(lines, "# " .. text)
	end

	-- Syntax Highlighting
	add_comment("Syntax highlighting")
	add("type", spec_style(s.Type))
	add("type.builtin", spec_style(s.Type))
	add("type.enum.variant", fg_style(s.Identifier.fg, { "bold" }))
	add_bare("constructor", spec_style(s.Special))
	add_bare("constant", spec_style(s.Constant))
	add("constant.builtin", spec_style(s.Constant))
	add("constant.builtin.boolean", spec_style(s.Boolean))
	add("constant.character", spec_style(s.Character))
	add("constant.character.escape", spec_style(s.Special))
	add("constant.numeric", spec_style(s.Number))
	add("constant.numeric.float", spec_style(s.Float))

	add_comment("Strings")
	add_bare("string", spec_style(s.String))
	add("string.regexp", spec_style(s.Constant))
	add("string.special", spec_style(s.Special))
	add("string.special.symbol", spec_style(s.Identifier))
	add("string.special.url", spec_style(s.Special))
	add("string.special.path", spec_style(s.Special))

	add_comment("Comments")
	add_bare("comment", spec_style(s.Comment))
	add("comment.block.documentation", spec_style(s.Comment))

	add_comment("Variables")
	add_bare("variable", spec_style(s.Identifier))
	add("variable.builtin", spec_style(s.Constant))
	add("variable.parameter", spec_style(s.Identifier))
	add("variable.other.member", spec_style(s.Identifier))

	add_comment("Functions")
	add("function", spec_style(s.Function))
	add("function.builtin", spec_style(s.Special))
	add("function.method", spec_style(s.Function))
	add("function.macro", spec_style(s.PreProc))
	add("function.special", spec_style(s.PreProc))

	add_comment("Keywords")
	add_bare("keyword", spec_style(s.Statement))
	add("keyword.control.conditional", spec_style(s.Statement))
	add("keyword.control.repeat", spec_style(s.Statement))
	add("keyword.control.import", spec_style(s.PreProc))
	add("keyword.control.return", spec_style(s.Statement))
	add("keyword.control.exception", spec_style(s.Statement))
	add("keyword.operator", spec_style(s.Statement))
	add("keyword.function", spec_style(s.Statement))
	add("keyword.storage", spec_style(s.Type))
	add("keyword.storage.type", spec_style(s.Type))
	add("keyword.storage.modifier", spec_style(s.Type))
	add("keyword.directive", spec_style(s.PreProc))

	add_comment("Operators and punctuation")
	add_bare("operator", spec_style(s.Statement))
	add_bare("punctuation", spec_style(s.Delimiter))
	add("punctuation.delimiter", spec_style(s.Delimiter))
	add("punctuation.bracket", spec_style(s.Delimiter))
	add("punctuation.special", spec_style(s.Delimiter))

	add_comment("Other syntax")
	add_bare("attribute", spec_style(s.PreProc))
	add_bare("namespace", spec_style(s.Constant))
	add_bare("label", spec_style(s.Statement))
	add_bare("tag", spec_style(s.Special))
	add("tag.builtin", spec_style(s.Special))
	add_bare("special", spec_style(s.Special))

	-- Markup
	add_comment("Markup")
	add("markup.heading", spec_style(s.Title))
	add("markup.heading.marker", spec_style(s.Title))
	add("markup.bold", spec_style(s.Bold))
	add("markup.italic", spec_style(s.Italic))
	add("markup.strikethrough", fmt_style(nil, nil, { "crossed_out" }))
	add("markup.link", spec_style(s.Constant))
	add("markup.link.url", spec_style(s.Constant))
	add("markup.link.text", spec_style(s.Special))
	add("markup.quote", fg_style(s.String.fg, {}))
	add("markup.raw.inline", spec_style(s.Constant))
	add("markup.raw.block", spec_style(s.Constant))
	add("markup.list.unnumbered", spec_style(s.Special))
	add("markup.list.numbered", spec_style(s.Special))

	-- Diff
	add_comment("Diff")
	add("diff.plus", bg_style(s.DiffAdd.bg))
	add("diff.minus", bg_style(s.DiffDelete.bg))
	add("diff.delta", bg_style(s.DiffChange.bg))

	-- Diagnostics
	add_comment("Diagnostics")
	add_bare("warning", fg_style(s.DiagnosticWarn.fg, {}))
	add_bare("error", fg_style(s.DiagnosticError.fg, {}))
	add_bare("info", fg_style(s.DiagnosticInfo.fg, {}))
	add_bare("hint", fg_style(s.DiagnosticHint.fg, {}))
	add("diagnostic.warning", underline_style(s.DiagnosticWarn.fg))
	add("diagnostic.error", underline_style(s.DiagnosticError.fg))
	add("diagnostic.info", underline_style(s.DiagnosticInfo.fg))
	add("diagnostic.hint", underline_style(s.DiagnosticHint.fg))
	add("diagnostic.unnecessary", fg_style(s.DiagnosticWarn.fg, {}))
	add("diagnostic.deprecated", fg_style(s.DiagnosticWarn.fg, { "crossed_out" }))

	-- UI
	add_comment("UI")
	add("ui.background", fg_bg_style(s.Normal.fg, s.Normal.bg, {}))
	add("ui.text", fg_style(s.Normal.fg, {}))
	add("ui.text.focus", fg_style(s.Normal.fg, {}))
	add("ui.text.inactive", fg_style(s.StatusLineNC.fg, {}))
	add("ui.text.info", fg_style(s.Normal.fg, {}))

	add_comment("Cursor")
	add("ui.cursor", fg_bg_style(s.Cursor.fg, s.Cursor.bg.mix(s.Normal.bg, 50), {}))
	add("ui.cursor.match", fg_bg_style(s.MatchParen.fg, s.MatchParen.bg, {}))
	add("ui.cursor.primary", fg_bg_style(s.Cursor.fg, s.Cursor.bg, {}))

	add_comment("Selection")
	add("ui.selection", bg_style(s.Visual.bg))
	add("ui.selection.primary", bg_style(s.Visual.bg))

	add_comment("Statusline")
	add("ui.statusline", fg_bg_style(s.StatusLine.fg, s.StatusLine.bg, {}))
	add("ui.statusline.inactive", fg_bg_style(s.StatusLineNC.fg, s.StatusLineNC.bg, {}))
	add("ui.statusline.normal", fg_bg_style(s.StatusLine.fg, s.StatusLine.bg, {}))
	add("ui.statusline.insert", fg_bg_style(s.StatusLine.fg, s.StatusLine.bg, {}))
	add("ui.statusline.select", fg_bg_style(s.StatusLine.fg, s.StatusLine.bg, {}))

	add_comment("Bufferline")
	add("ui.bufferline", fg_bg_style(s.StatusLine.fg, s.StatusLine.bg, {}))
	add("ui.bufferline.active", fg_bg_style(s.Normal.fg, s.Normal.bg, { "bold" }))
	add("ui.bufferline.background", fg_bg_style(s.StatusLineNC.fg, s.StatusLineNC.bg, {}))

	add_comment("Popups and menus")
	add("ui.popup", fg_bg_style(s.Normal.fg, s.NormalFloat.bg, {}))
	add("ui.popup.info", fg_bg_style(s.Normal.fg, s.NormalFloat.bg, {}))
	add("ui.menu", fg_bg_style(s.Normal.fg, s.Pmenu.bg, {}))
	add("ui.menu.selected", fg_bg_style(s.Normal.fg, s.PmenuSel.bg, {}))
	add("ui.menu.scroll", bg_style(s.PmenuSbar.bg))

	add_comment("Line numbers and gutter")
	add("ui.linenr", fg_style(s.LineNr.fg, {}))
	add("ui.linenr.selected", fg_style(s.CursorLineNr.fg, { "bold" }))
	add("ui.gutter", fg_style(s.LineNr.fg, {}))
	add("ui.gutter.selected", fg_style(s.CursorLineNr.fg, { "bold" }))

	add_comment("Cursor line and column")
	add("ui.cursorline.primary", bg_style(s.CursorLine.bg))
	add("ui.cursorline.secondary", bg_style(s.CursorLine.bg))
	add("ui.cursorcolumn.primary", bg_style(s.CursorColumn.bg))
	add("ui.cursorcolumn.secondary", bg_style(s.CursorColumn.bg))

	add_comment("Windows and panels")
	add("ui.window", fg_style(s.WinSeparator.fg, {}))
	add("ui.help", fg_bg_style(s.Normal.fg, s.NormalFloat.bg, {}))

	add_comment("Search and highlight")
	add("ui.highlight", fg_bg_style(s.Search.fg, s.Search.bg, {}))

	add_comment("Virtual elements")
	add("ui.virtual.ruler", bg_style(s.ColorColumn.bg))
	add("ui.virtual.whitespace", fg_style(s.IblScope.fg, {}))
	add("ui.virtual.indent-guide", fg_style(s.IblScope.fg, {}))
	add("ui.virtual.inlay-hint", fg_bg_style(s.LspInlayHint.fg, s.LspInlayHint.bg, {}))
	add("ui.virtual.wrap", fg_style(s.IblScope.fg, {}))
	add("ui.virtual.jump-label", fg_bg_style(s.IncSearch.fg, s.IncSearch.bg, { "bold" }))

	return lines
end

---@diagnostic disable: undefined-global
-- selene: allow(undefined_variable)
run(
	{ specs, p },
	function(colorscheme)
		return colorscheme
	end,
	build_helix_theme,
	{ prepend, "# This file is auto-generated by shipwright.nvim" },
	{ overwrite, string.format("extras/helix/%s.toml", name) }
)
-- selene: deny(undefined_variable)
---@diagnostic enable: undefined-global
