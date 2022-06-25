local lush = require "lush"

local function generate(p, opt)
	local p1 = {
		bg = p.bg,
		fg1 = p.fg.da(10),
		fg2 = p.fg.da(14),
		fg3 = p.fg.da(20),
		fg4 = p.fg.da(24),
		fg5 = p.fg.da(30),
		fg6 = p.fg.da(42),
	}

	if opt.darkness == "stark" then
		p1.bg = p.bg_stark
	elseif opt.darkness == "warm" then
		p1.bg = p.bg_warm
	elseif opt.darkness ~= nil then
		local error_msg = "Unknown darkness value: " .. vim.inspect(opt.darkness)
		vim.notify(error_msg, vim.log.levels.WARN, { title = "zenbones" })
	end

	---@diagnostic disable: undefined-global
	-- selene: allow(undefined_variable)
	-- stylua: ignore start
	local base = lush(function()
		return {
			-- The following are all the Neovim default highlight groups from the docs
			-- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
			-- probably style all of these at a bare minimum.
			--
			-- Referenced/linked groups must come before being referenced/lined,
			-- so the order shown ((mostly) alphabetical) is likely
			-- not the order you will end up with.
			--
			-- You can uncomment these and leave them empty to disable any
			-- styling for that group (meaning they mostly get styled as Normal)
			-- or leave them commented to apply vims default colouring or linking.

			Normal          { bg = not opt.transparent_background and p1.bg or "NONE", fg = p.fg }, -- normal text

			Underlined      { gui = "underline" }, -- (preferred) text that stands out, HTML links
			Bold            { gui = "bold" },
			Italic          { gui = "italic" },

			Error           { fg = p.rose }, -- (preferred) any erroneous construct
			ErrorMsg        { Error }, -- error messages on the command line
			WarningMsg      { fg = p.wood }, -- warning messages

			Comment         { fg = p1.bg.li(opt.lighten_comments or 38).de(24), gui = opt.italic_comments ~= false and "italic" or "NONE" }, -- any comment
			Conceal         { fg = p1.fg5, gui = "bold,italic" }, -- placeholder characters substituted for concealed text (see 'conceallevel')

			Cursor          { bg = p.fg.li(20), fg = p1.bg }, -- character under the cursor
			lCursor         { Cursor, bg = Cursor.bg.da(35)  }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
			-- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
			TermCursor      { Cursor }, -- cursor in a focused terminal
			TermCursorNC    { lCursor }, -- cursor in an unfocused terminal

			CursorLine      { bg = p1.bg.li(opt.lighten_cursor_line or 4) }, -- Screen-line at the cursor, when 'cursorline' is set.	Low-priority if foreground (ctermfg OR guifg) is not set.
			CursorColumn    { CursorLine }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
			ColorColumn     { bg = p.wood.saturation(46).lightness(p1.bg.l + 18) }, -- used for the columns set with 'colorcolumn'

			DiffAdd         { bg = p.leaf.saturation(50).lightness(p1.bg.l + 8) }, -- diff mode: Added line |diff.txt|
			DiffChange      { bg = p.water.saturation(50).lightness(p1.bg.l + 8) }, -- diff mode: Changed line |diff.txt|
			DiffDelete      { bg = p.rose.saturation(30).lightness(p1.bg.l + 8) }, -- diff mode: Deleted line |diff.txt|
			DiffText        { bg = p.water.saturation(50).lightness(p1.bg.l + 20), fg = p.fg }, -- diff mode: Changed text within a changed line |diff.txt|

			LineNr          { fg = p1.bg.li(opt.lighten_line_nr or 35), bg = opt.solid_line_nr and p1.bg.li(4) or "NONE" }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
			SignColumn      { LineNr }, -- column where |signs| are displayed
			FoldColumn      { LineNr, gui = "bold" }, -- 'foldcolumn'
			Folded          { bg = p1.bg.li(14), fg = p1.bg.li(64) }, -- line used for closed folds
			CursorLineNr    { LineNr, fg = p.fg, gui = "bold" }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.

			-- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
			-- MsgArea      { }, -- Area for messages and cmdline
			-- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
			MoreMsg         { fg = p.leaf, gui = "bold" }, -- |more-prompt|
			NormalFloat     { bg = p1.bg.li(10) }, -- Normal text in floating windows.
			FloatBorder     { fg = p1.bg.li(46), bg = opt.solid_float_border and NormalFloat.bg or "NONE" }, -- Normal text in floating windows.

			Pmenu           { bg = p1.bg.li(10) }, -- Popup menu: normal item.
			PmenuSel        { bg = p1.bg.li(22) }, -- Popup menu: selected item.
			PmenuSbar       { bg = p1.bg.li(32) }, -- Popup menu: scrollbar.
			PmenuThumb      { bg = p1.bg.li(50) }, -- Popup menu: Thumb of the scrollbar.

			Search          { bg = p.blossom.lightness(p1.bg.l + 24), fg = p.fg }, -- Last search pattern highlighting (see 'hlsearch').	Also used for similar items that need to stand out.
			IncSearch       { bg = p.blossom.lightness(p1.bg.l + 56), fg = p1.bg, gui = "bold" }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
			-- Substitute   { }, -- |:substitute| replacement text highlighting
			MatchParen      { Search }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
			-- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
			CurSearch       { IncSearch },

			SpellBad        { fg = Error.fg.de(30), gui = "undercurl", guisp = Error.fg }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
			SpellCap        { SpellBad, guisp = Error.fg.da(10) }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
			SpellLocal      { SpellCap }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
			SpellRare       { SpellBad, guisp = p.wood }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.

			StatusLine      { bg = p1.bg.li(12), fg = p.fg }, -- status line of current window
			StatusLineNC    { bg = p1.bg.li(6), fg = p.fg.li(28) }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
			TabLine         { StatusLine }, -- tab pages line, not active tab page label
			TabLineFill     { StatusLineNC }, -- tab pages line, where there are no labels
			TabLineSel      { gui = "bold" }, -- tab pages line, active tab page label
			VertSplit       { fg = LineNr.fg, bg = opt.solid_vert_split and StatusLineNC.bg or "NONE" }, -- the column separating vertically split windows
			WinSeparator    { VertSplit },

			Visual          { bg = p.fg.de(18).lightness(p1.bg.l + 18) }, -- Visual mode selection
			-- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".

			NonText         { fg = p1.bg.li(opt.lighten_non_text or 30) }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
			SpecialKey      { NonText, gui = "italic" }, -- Unprintable characters: text displayed differently from what it really is.	But not 'listchars' whitespace. |hl-Whitespace|
			Whitespace      { NonText }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
			EndOfBuffer     { NonText }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.

			WildMenu        { bg = p.blossom, fg = p1.bg }, -- current match in 'wildmenu' completion
			Directory       { gui = "bold" }, -- directory names (and other special names in listings)
			Question        { MoreMsg }, -- |hit-enter| prompt and yes/no questions
			Title           { fg = p.fg, gui = "bold" }, -- titles for output from ":set all", ":autocmd" etc.


			-- These groups are not listed as default vim groups,
			-- but they are defacto standard group names for syntax highlighting.
			-- commented out groups should chain up to their "preferred" group by
			-- default,
			-- Uncomment and edit if you want more specific syntax highlighting.

			Constant        { fg = p1.fg4, gui = "italic" }, -- (preferred) any constant
			-- String       { }, --   a string constant: "this is a string"
			-- Character    { }, --  a character constant: 'c', '\n'
			Number          { fg = p.fg, gui = "italic" }, --   a number constant: 234, 0xff
			Boolean         { Number }, --  a boolean constant: TRUE, false
			-- Float        { }, --    a floating point constant: 2.3e10

			Identifier      { fg = p1.fg2 }, -- (preferred) any variable name
			Function        { fg = p.fg }, -- function name (also: methods for classes)

			Statement       { fg = p.fg, gui = "bold" }, -- (preferred) any statement
			-- Conditional  { }, --  if, then, else, endif, switch, etc.
			-- Repeat       { }, --   for, do, while, etc.
			-- Label        { }, --    case, default, etc.
			-- Operator     { }, -- "sizeof", "+", "*", etc.
			-- Keyword      { }, --  any other keyword
			-- Exception    { }, --  try, catch, throw

			PreProc         { Statement }, -- (preferred) generic Preprocessor
			-- Include      { }, --  preprocessor #include
			-- Define       { }, --   preprocessor #define
			-- Macro        { }, --    same as Define
			-- PreCondit    { }, --  preprocessor #if, #else, #endif, etc.

			Type            { fg = p1.bg.li(58) }, -- (preferred) int, long, char, etc.
			-- StorageClass { }, -- static, register, volatile, etc.
			-- Structure    { }, --  struct, union, enum, etc.
			-- Typedef      { }, --  A typedef

			Special         { fg = p1.fg3, gui = "bold" }, -- (preferred) any special symbol
			-- SpecialChar  { }, --  special character in a constant
			-- Tag          { }, --    you can use CTRL-] on this
			Delimiter       { fg = p1.bg.li(47) }, --	character that needs attention
			SpecialComment  { Comment, gui = "NONE" }, -- special things inside a comment
			-- Debug        { }, --    debugging statements

			-- ("Ignore", below, may be invisible...)
			-- Ignore       { }, -- (preferred) left blank, hidden	|hl-Ignore|

			Todo            { gui = "bold,underline" }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

			-- These groups are for the native LSP client. Some other LSP clients may
			-- use these groups, or use their own. Consult your LSP client's
			-- documentation.

			LspReferenceText           { ColorColumn }, -- used for highlighting "text" references
			LspReferenceRead           { ColorColumn }, -- used for highlighting "read" references
			LspReferenceWrite          { ColorColumn }, -- used for highlighting "write" references
			LspCodeLens                { LineNr },

			DiagnosticError            { Error },
			DiagnosticWarn             { WarningMsg },
			DiagnosticInfo             { fg = p.water },
			DiagnosticHint             { fg = p.blossom },

			DiagnosticSignError        { SignColumn, fg = DiagnosticError.fg },
			DiagnosticSignWarn         { SignColumn, fg = DiagnosticWarn.fg },
			DiagnosticSignInfo         { SignColumn, fg = DiagnosticInfo.fg },
			DiagnosticSignHint         { SignColumn, fg = DiagnosticHint.fg },

			DiagnosticVirtualTextError { DiagnosticError, bg = DiagnosticError.fg.saturation(8).lightness(p1.bg.l + 4) },
			DiagnosticVirtualTextWarn  { DiagnosticWarn, bg = DiagnosticWarn.fg.saturation(8).lightness(p1.bg.l + 4) },
			DiagnosticVirtualTextInfo  { DiagnosticInfo, bg = DiagnosticInfo.fg.saturation(8).lightness(p1.bg.l + 4) },
			DiagnosticVirtualTextHint  { DiagnosticHint, bg = DiagnosticHint.fg.saturation(8).lightness(p1.bg.l + 4) },

			DiagnosticUnderlineError   { fg = opt.colorize_diagnostic_underline_text and DiagnosticError.fg or "NONE", gui = "undercurl", sp = DiagnosticError.fg },
			DiagnosticUnderlineWarn    { fg = opt.colorize_diagnostic_underline_text and DiagnosticWarn.fg or "NONE", gui = "undercurl", sp = DiagnosticWarn.fg },
			DiagnosticUnderlineInfo    { fg = opt.colorize_diagnostic_underline_text and DiagnosticInfo.fg or "NONE", gui = "undercurl", sp = DiagnosticInfo.fg },
			DiagnosticUnderlineHint    { fg = opt.colorize_diagnostic_underline_text and DiagnosticHint.fg or "NONE", gui = "undercurl", sp = DiagnosticHint.fg },

			-- These groups are for the neovim tree-sitter highlights.
			-- As of writing, tree-sitter support is a WIP, group names may change.
			-- By default, most of these groups link to an appropriate Vim group,
			-- TSError -> Error for example, so you do not have to define these unless
			-- you explicitly want to support Treesitter's improved syntax awareness.

			-- TSAnnotation         { };	-- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
			-- TSAttribute          { };	-- (unstable) TODO: docs
			-- TSBoolean            { };	-- For booleans.
			-- TSCharacter          { };	-- For characters.
			-- TSComment            { };	-- For comment blocks.
			-- TSConstructor        { };	-- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
			-- TSConditional        { };	-- For keywords related to conditionnals.
			TSConstant              { Identifier, gui = "bold" };	-- For constants
			TSConstBuiltin          { Number };	-- For constant that are built in the language: `nil` in Lua.
			TSConstMacro            { Number };	-- For constants that are defined by macros: `NULL` in C.
			-- TSError              { };	-- For syntax/parser errors.
			-- TSException          { };	-- For exception related keywords.
			-- TSField              { };	-- For fields.
			-- TSFloat              { };	-- For floats.
			-- TSFunction           { };	-- For function (calls and definitions).
			-- TSFuncBuiltin        { };	-- For builtin functions: `print` in Lua.
			-- TSFuncMacro          { };	-- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
			-- TSInclude            { };	-- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
			-- TSKeyword            { };	-- For keywords that don't fall in previous categories.
			-- TSKeywordFunction    { };	-- For keywords used to define a fuction.
			-- TSLabel              { };	-- For labels: `label:` in C and `:label:` in Lua.
			-- TSMethod             { };	-- For method calls and definitions.
			TSNamespace             { Special };	-- For identifiers referring to modules and namespaces.
			-- TSNone               { };	-- TODO: docs
			-- TSNumber             { };	-- For all numbers
			-- TSOperator           { };	-- For any operator: `+`, but also `->` and `*` in C.
			-- TSParameter          { };	-- For parameters of a function.
			-- TSParameterReference { };	-- For references to parameters of a function.
			-- TSProperty           { };	-- Same as `TSField`.
			-- TSPunctDelimiter     { };	-- For delimiters ie: `.`
			-- TSPunctBracket       { };	-- For brackets and parens.
			-- TSPunctSpecial       { };	-- For special punctutation that does not fall in the catagories before.
			-- TSRepeat             { };	-- For keywords related to loops.
			-- TSString             { };	-- For strings.
			-- TSStringRegex        { };	-- For regexes.
			-- TSStringEscape       { };	-- For escape characters within a string.
			-- TSSymbol             { };	-- For identifiers referring to symbols or atoms.
			-- TSType               { };	-- For types.
			-- TSTypeBuiltin        { };	-- For builtin types.
			TSVariable              { Identifier }, -- Any variable name that does not have another highlight.
			TSVariableBuiltin       { Number };	-- Variable names that are defined by the languages, like `this` or `self`.

			TSTag                   { Special }, -- Tags like html tag names.
			-- TSTagDelimiter       { };	-- Tag delimiter like `<` `>` `/`
			-- TSText               { };	-- For strings considered text in a markup language.
			TSEmphasis              { Italic },	-- For text to be represented with emphasis.
			TSUnderline             { Underlined },	-- For text to be represented with an underline.
			TSStrong                { Bold },	-- Text to be represented in bold.
			-- TSStrike             { };	-- For strikethrough text.
			-- TSTitle              { };	-- Text that is part of a title.
			-- TSLiteral            { };	-- Literal text.
			-- TSURI                { };	-- Any URI like a link or email.

			TSNote                  { DiagnosticInfo },
			TSWarning               { WarningMsg },
			TSDanger                { Error },

			-- TS: Markdown
			markdownTSPunctSpecial  { Special },
			markdownTSStringEscape  { SpecialKey },
			markdownTSTextReference { Identifier, gui = "underline" },
			markdownTSEmphasis      { Italic },
			markdownTSTitle         { Statement },
			markdownTSLiteral       { Type },
			markdownTSURI           { SpecialComment },

			-- Syntax
			diffAdded                 { fg = p.leaf },
			diffRemoved               { fg = p.rose },
			diffChanged               { fg = p.water },
			diffOldFile               { fg = p.rose, gui = "italic" },
			diffNewFile               { fg = p.leaf, gui = "italic" },
			diffFile                  { fg = p.wood, gui = "bold" },
			diffLine                  { fg = p.blossom, gui = "bold" },
			diffIndexLine             { fg = p.wood },

			gitcommitOverflow         { WarningMsg },

			markdownUrl               { markdownTSURI },
			markdownCode              { markdownTSLiteral },
			markdownLinkText          { markdownTSTextReference },
			markdownLinkTextDelimiter { Delimiter },

			helpHyperTextEntry        { Special },
			helpHyperTextJump         { Constant },
			helpSpecial               { Type },
			helpOption                { Constant },

			-- Other plugins
			GitSignsAdd                      { SignColumn, fg = p.leaf },
			GitSignsChange                   { SignColumn, fg = p.water },
			GitSignsDelete                   { SignColumn, fg = p.rose },

			GitGutterAdd                     { GitSignsAdd },
			GitGutterChange                  { GitSignsChange },
			GitGutterDelete                  { GitSignsDelete },

			IndentBlanklineChar              { fg = p1.bg.li(14).de(22) },

			TelescopeSelection               { CursorLine },
			TelescopeSelectionCaret          { TelescopeSelection, fg = p.rose },
			TelescopeMatching                { fg = p.blossom, gui = "bold" },
			TelescopeBorder                  { fg = FloatBorder.fg },

			Sneak                            { Search },
			SneakLabel                       { WildMenu },
			SneakLabelMask                   { bg = p.blossom, fg = p.blossom },

			LightspeedLabel                  { fg = p.blossom, gui = "bold,underline" },
			LightspeedLabelOverlapped        { fg = p.blossom, gui = "underline" },
			LightspeedLabelDistant           { fg = p.sky, gui = "bold,underline" },
			LightspeedLabelDistantOverlapped { fg = p.sky, gui = "underline" },
			LightspeedShortcut               { SneakLabel, gui = "bold,underline" },
			LightspeedOneCharMatch           { SneakLabel, gui = "bold" },
			LightspeedMaskedChar             { Conceal },
			LightspeedUnlabeledMatch         { Bold },
			LightspeedPendingOpArea          { SneakLabel },
			LightspeedPendingChangeOpArea    { fg = p.blossom },
			LightspeedGreyWash               { fg = Comment.fg },

			HopNextKey                       { LightspeedLabel },
			HopNextKey1                      { LightspeedLabelDistant },
			HopNextKey2                      { fg = p.water },
			HopUnmatched                     { LightspeedGreyWash } ,

			BufferCurrent                    { TabLineSel },
			BufferVisible                    { fg = StatusLineNC.fg },
			BufferVisibleSign                { fg = StatusLineNC.fg },
			BufferVisibleIndex               { fg = StatusLineNC.fg },

			CocErrorSign                     { DiagnosticSignError },
			CocWarningSign                   { DiagnosticSignWarn },
			CocInfoSign                      { DiagnosticSignInfo },
			CocHintSign                      { DiagnosticSignHint },
			CocErrorHighlight                { DiagnosticUnderlineError },
			CocWarningHighlight              { DiagnosticUnderlineWarn },
			CocInfoHighlight                 { DiagnosticUnderlineInfo },
			CocHintHighlight                 { DiagnosticUnderlineHint },
			CocErrorVirtualText              { DiagnosticVirtualTextError },
			CocWarningVitualText             { DiagnosticVirtualTextWarn },
			CocSelectedText                  { SpellBad },
			CocCodeLens                      { LineNr },
			CocMarkdownLink                  { fg = p.sky, gui = "underline" },
			CocSearch                        { Search },

			NeogitNotificationError          { DiagnosticError },
			NeogitNotificationWarning        { DiagnosticWarn },
			NeogitNotificationInfo           { DiagnosticInfo },

			NeogitDiffContextHighlight       { CursorLine },
			NeogitDiffDeleteHighlight        { DiffDelete },
			NeogitDiffAddHighlight           { DiffAdd },
			NeogitHunkHeader                 { LineNr },
			NeogitHunkHeaderHighlight        { CursorLine, fg = p.fg, gui = "bold" },

			WhichKey                         { Statement },
			WhichKeyGroup                    { Special },
			WhichKeySeparator                { LineNr },
			WhichKeyValue                    { Constant },

			TroubleNormal                    { Function },
			TroubleText                      { Function },
			TroubleSource                    { Constant },

			NvimTreeNormal                   { Normal, bg = not opt.transparent_background and p1.bg.li(3) or "NONE" },
			NvimTreeWinSeparator             (opt.transparent_background and { WinSeparator } or { fg = "bg" }),
			NvimTreeCursorLine               { bg = StatusLineNC.bg },
			NvimTreeCursorColumn             { NvimTreeCursorLine	},
			NvimTreeRootFolder               { fg = p.water, gui = "bold" },
			NvimTreeSymlink                  { fg = p.water },
			NvimTreeGitDirty                 { diffChanged },
			NvimTreeGitNew                   { diffAdded },
			NvimTreeGitDeleted               { diffRemoved },
			NvimTreeSpecialFile              { fg = p.blossom, gui = "underline" },

			CmpItemAbbr			             { fg = p1.fg2 },
			CmpItemAbbrDeprecated            { fg = p1.fg6 },
			CmpItemAbbrMatch	             { fg = p.fg, gui = "bold"  },
			CmpItemAbbrMatchFuzzy            { fg = p1.fg1, gui = "bold" },
			CmpItemKind                      { fg = p1.fg4 },
			CmpItemMenu                      { fg = p1.fg5 },

			NnnNormal                        { NvimTreeNormal },
			NnnNormalNC                      { NnnNormal },
			NnnWinSeparator                  { NvimTreeWinSeparator },
			NnnVertSplit                     { NnnWinSeparator },
		}
	end)
	-- stylua: ignore end
	-- selene: deny(undefined_variable)
	---@diagnostic enable: undefined-global

	local specs = {
		base,
	}

	if opt.lighten_noncurrent_window then
		table.insert(
			specs,
			---@diagnostic disable: undefined-global
			-- selene: allow(undefined_variable)
			lush(function()
				return {
					NormalNC { base.Normal, bg = not opt.transparent_background and base.Normal.bg.li(2) or "NONE" }, -- normal text in non-current windows
				}
			end)
			-- selene: deny(undefined_variable)
			---@diagnostic enable: undefined-global
		)
	end

	-- stylua: ignore start
	if not vim.diagnostic then
		table.insert(
			specs,
			---@diagnostic disable: undefined-global
			-- selene: allow(undefined_variable)
			lush(function()
				return {
					LspDiagnosticsDefaultError              { base.DiagnosticError }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
					LspDiagnosticsDefaultWarning            { base.DiagnosticWarn }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
					LspDiagnosticsDefaultInformation        { base.DiagnosticInfo }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
					LspDiagnosticsDefaultHint               { base.DiagnosticHint }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

					LspDiagnosticsVirtualTextError          { base.DiagnosticVirtualTextError }, -- Used for "Error" diagnostic virtual text
					LspDiagnosticsVirtualTextWarning        { base.DiagnosticVirtualTextWarn }, -- Used for "Warning" diagnostic virtual text
					LspDiagnosticsVirtualTextInformation    { base.DiagnosticVirtualTextInfo }, -- Used for "Information" diagnostic virtual text
					LspDiagnosticsVirtualTextHint           { base.DiagnosticVirtualTextHint }, -- Used for "Hint" diagnostic virtual text

					LspDiagnosticsUnderlineError            { base.DiagnosticUnderlineError }, -- Used to underline "Error" diagnostics
					LspDiagnosticsUnderlineWarning          { base.DiagnosticUnderlineWarn }, -- Used to underline "Warning" diagnostics
					LspDiagnosticsUnderlineInformation      { base.DiagnosticUnderlineInfo }, -- Used to underline "Information" diagnostics
					LspDiagnosticsUnderlineHint             { base.DiagnosticUnderlineHint }, -- Used to underline "Hint" diagnostics

					-- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
					-- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
					-- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
					-- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

					LspDiagnosticsSignError                 { base.DiagnosticSignError }, -- Used for "Error" signs in sign column
					LspDiagnosticsSignWarning               { base.DiagnosticSignWarn }, -- Used for "Warning" signs in sign column
					LspDiagnosticsSignInformation           { base.DiagnosticSignInfo }, -- Used for "Information" signs in sign column
					LspDiagnosticsSignHint                  { base.DiagnosticSignHint }, -- Used for "Hint" signs in sign column
				}
			end)
			-- selene: deny(undefined_variable)
			---@diagnostic enable: undefined-global
		)
	end
	-- stylua: ignore end

	return lush.merge(specs)
end

return generate
-- vi:nowrap
