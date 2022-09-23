local lush = require "lush"


local function generate(p, opt)
	local p1 = {
		bg = p.bg,
		fg1 = p.fg.li(11),
		fg2 = p.fg.li(15),
		fg3 = p.fg.li(22),
		fg4 = p.fg.li(25),
		fg5 = p.fg.li(31),
		fg6 = p.fg.li(42),
	}

	if opt.lightness == "bright" then
		p1.bg = p.bg_bright
	elseif opt.lightness == "dim" then
		p1.bg = p.bg_dim
	elseif opt.lightness ~= nil then
		local error_msg = "Unknown lightness value: " .. vim.inspect(opt.lightness)
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

			Comment         { fg = p1.bg.da(opt.darken_comments or 38).de(28), gui = opt.italic_comments ~= false and "italic" or "NONE" }, -- any comment
			Conceal         { fg = p1.fg3, gui = "bold,italic" }, -- placeholder characters substituted for concealed text (see 'conceallevel')

			Cursor          { bg = p.fg, fg = p1.bg }, -- character under the cursor
			lCursor         { Cursor, bg = Cursor.bg.li(20)  }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
			-- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
			TermCursor      { Cursor }, -- cursor in a focused terminal
			TermCursorNC    { lCursor }, -- cursor in an unfocused terminal

			CursorLine      { bg = p1.bg.da(opt.darken_cursor_line or 3) }, -- Screen-line at the cursor, when 'cursorline' is set.	Low-priority if foreground (ctermfg OR guifg) is not set.
			CursorColumn    { CursorLine }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
			ColorColumn     { bg = p.wood.saturation(46).lightness(p1.bg.l - 12) }, -- used for the columns set with 'colorcolumn'

			DiffAdd         { bg = p.leaf.saturation(30).lightness(p1.bg.l - 6) }, -- diff mode: Added line |diff.txt|
			DiffChange      { bg = p.water.saturation(30).lightness(p1.bg.l - 6) }, -- diff mode: Changed line |diff.txt|
			DiffDelete      { bg = p.rose.saturation(40).lightness(p1.bg.l - 6) }, -- diff mode: Deleted line |diff.txt|
			DiffText        { bg = p.water.saturation(30).lightness(p1.bg.l - 18), fg = p.fg }, -- diff mode: Changed text within a changed line |diff.txt|

			LineNr          { fg = p1.bg.da(opt.darken_line_nr or 33), bg = opt.solid_line_nr and p1.bg.da(4) or "NONE" }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
			SignColumn      { LineNr }, -- column where |signs| are displayed
			FoldColumn      { LineNr, gui = "bold" }, -- 'foldcolumn'
			Folded          { bg = not opt.transparent_background and p1.bg.da(16) or "NONE", fg = p1.bg.da(64) }, -- line used for closed folds
			CursorLineNr    { LineNr, fg = p.fg, gui = "bold" }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.

			-- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
			-- MsgArea      { }, -- Area for messages and cmdline
			-- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
			MoreMsg         { fg = p.leaf, gui = "bold" }, -- |more-prompt|
			NormalFloat     { bg = p1.bg.da(8) }, -- Normal text in floating windows.
			FloatBorder     { fg = p1.bg.da(50), bg = opt.solid_float_border and NormalFloat.bg or "NONE" }, -- Normal text in floating windows.

			Pmenu           { bg = p1.bg.da(10) }, -- Popup menu: normal item.
			PmenuSel        { bg = p1.bg.da(20) }, -- Popup menu: selected item.
			PmenuSbar       { bg = p1.bg.da(28) }, -- Popup menu: scrollbar.
			PmenuThumb      { bg = p1.bg.li(58) }, -- Popup menu: Thumb of the scrollbar.

			Search          { bg = p.blossom.lightness(p1.bg.l - 15), fg = p.fg }, -- Last search pattern highlighting (see 'hlsearch').	Also used for similar items that need to stand out.
			IncSearch       { bg = p.blossom.lightness(p1.bg.l - 35), fg = p1.bg, gui = "bold" }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
			-- Substitute   { }, -- |:substitute| replacement text highlighting
			MatchParen      { Search }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
			-- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
			CurSearch       { IncSearch },

			SpellBad        { fg = Error.fg.de(30), gui = "undercurl", sp = Error.fg }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
			SpellCap        { SpellBad, sp = Error.fg.li(10) }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
			SpellLocal      { SpellCap }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
			SpellRare       { SpellBad, sp = p.wood }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.

			StatusLine      { bg = p1.bg.da(12), fg = p.fg }, -- status line of current window
			StatusLineNC    { bg = p1.bg.da(6), fg = p.fg.li(28) }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
			TabLine         { StatusLine }, -- tab pages line, not active tab page label
			TabLineFill     { StatusLineNC }, -- tab pages line, where there are no labels
			TabLineSel      { gui = "bold" }, -- tab pages line, active tab page label
			VertSplit       { fg = LineNr.fg, bg = opt.solid_vert_split and StatusLineNC.bg or "NONE" }, -- the column separating vertically split windows
			WinSeparator    { VertSplit },

			Visual          { bg = p.fg.lightness(p1.bg.l - 8) }, -- Visual mode selection
			-- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".

			NonText         { fg = p1.bg.da(opt.darken_non_text or 25) }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
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
			-- Conditional  { }, --  if, then, else, endif, switch, etp.
			-- Repeat       { }, --   for, do, while, etp.
			-- Label        { }, --    case, default, etp.
			-- Operator     { }, -- "sizeof", "+", "*", etp.
			-- Keyword      { }, --  any other keyword
			-- Exception    { }, --  try, catch, throw

			PreProc         { Statement }, -- (preferred) generic Preprocessor
			-- Include      { }, --  preprocessor #include
			-- Define       { }, --   preprocessor #define
			-- Macro        { }, --    same as Define
			-- PreCondit    { }, --  preprocessor #if, #else, #endif, etp.

			Type            { fg = p1.bg.sa(20).da(60) }, -- (preferred) int, long, char, etp.
			-- StorageClass { }, -- static, register, volatile, etc.
			-- Structure    { }, --  struct, union, enum, etc.
			-- Typedef      { }, --  A typedef

			Special         { fg = p1.fg3, gui = "bold" }, -- (preferred) any special symbol
			-- SpecialChar  { }, --  special character in a constant
			-- Tag          { }, --    you can use CTRL-] on this
			Delimiter       { fg = p1.bg.da(42) }, --	character that needs attention
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

			DiagnosticVirtualTextError { DiagnosticError, bg = DiagnosticError.fg.saturation(42).lightness(p1.bg.l - 4) },
			DiagnosticVirtualTextWarn  { DiagnosticWarn, bg = DiagnosticWarn.fg.saturation(42).lightness(p1.bg.l - 4)},
			DiagnosticVirtualTextInfo  { DiagnosticInfo, bg = DiagnosticInfo.fg.saturation(42).lightness(p1.bg.l - 4) },
			DiagnosticVirtualTextHint  { DiagnosticHint, bg = DiagnosticHint.fg.saturation(42).lightness(p1.bg.l - 4)},

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

			IndentBlanklineChar              { fg = p1.bg.da(12).de(20) },

			TelescopeSelection               { CursorLine },
			TelescopeSelectionCaret          { TelescopeSelection, fg = p.rose },
			TelescopeMatching                { fg = p.blossom, gui = "bold" },
			TelescopeBorder                  { fg = FloatBorder.fg },

			Sneak                            { Search },
			SneakLabel                       { WildMenu },
			SneakLabelMask                   { bg = p.blossom, fg = p.blossom },

			LeapMatch                        { gui = "bold,underline,nocombine" },
			LeapLabelPrimary                 { Search , gui = "bold,nocombine" },
			LeapLabelSecondary               { DiffText, gui = "bold,nocombine" },
			LeapLabelSelected                { IncSearch },

			HopNextKey                       { fg = p.blossom, gui = "bold,underline" },
			HopNextKey1                      { fg = p.sky, gui = "bold,underline" },
			HopNextKey2                      { fg = p.water },
			HopUnmatched                     { fg = Comment.fg },

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
			CocMenuSel                       { CursorLine },
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

			NvimTreeNormal                   { Normal, bg = not opt.transparent_background and p1.bg.da(3) or "NONE" },
			NvimTreeWinSeparator             (opt.transparent_background and { WinSeparator } or { fg = "bg" }),
			NvimTreeCursorLine               { bg = StatusLineNC.bg },
			NvimTreeCursorColumn             { NvimTreeCursorLine },
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

			MasonHighlight                   { fg = p.water },
			MasonHighlightBlock				 { fg = p1.bg, bg = MasonHighlight.fg },
			MasonHighlightBlockBold 		 { MasonHighlightBlock, gui = "bold" },
			MasonHighlightSecondary          { fg = p.wood },
			MasonHighlightBlockSecondary     { fg = p1.bg, bg = MasonHighlightSecondary.fg },
			MasonHighlightBlockBoldSecondary { MasonHighlightBlockSecondary, gui = "bold" },
			MasonMuted	                     { fg = p1.fg4 },
			MasonMutedBlock	                 { fg = p1.bg, bg = MasonMuted.fg },
			MasonMutedBlockBold	             { MasonMutedBlock, gui = "bold" },
			MasonHeader	                     { fg = p1.bg, bg = p.wood, gui = "bold" },
			MasonError                       { Error },
		}
	end)
	-- stylua: ignore end
	-- selene: deny(undefined_variable)
	---@diagnostic enable: undefined-global

	local specs = {
		base,
	}

	if opt.darken_noncurrent_window then
		table.insert(
			specs,
			---@diagnostic disable: undefined-global
			-- selene: allow(undefined_variable)
			lush(function()
				return {
					NormalNC { base.Normal, bg = not opt.transparent_background and base.Normal.bg.da(2) or "NONE" }, -- normal text in non-current windows
				}
			end)
			-- selene: deny(undefined_variable)
			---@diagnostic enable: undefined-global
		)
	end

	return lush.merge(specs)
end

return generate
-- vi:nowrap
