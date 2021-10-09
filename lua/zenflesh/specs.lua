local lush = require "lush"

local M = {}

function M.generate(p, opt)
	local normal_bg = p.bg
	local diff_bg_l = 0

	if opt.darkness == "stark" then
		normal_bg = p.bg_stark
		diff_bg_l = -3
	elseif opt.darkness == "warm" then
		normal_bg = p.bg_warm
		diff_bg_l = 3
	elseif opt.darkness ~= nil then
		local error_msg = "Unknown darkness value: " .. vim.inspect(darkness)
		vim.api.nvim_echo({ { error_msg, "WarningMsg" } }, true, {})
	end

	local comment_gui = opt.comment_gui ~= false and "italic" or "NONE"

	-- stylua: ignore start
	local theme = lush(function()
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

			Normal          { bg = normal_bg, fg = p.fg }, -- normal text

			Underlined      { gui = "underline" }, -- (preferred) text that stands out, HTML links
			Bold            { gui = "bold" },
			Italic          { gui = "italic" },

			Error           { fg = p.rose }, -- (preferred) any erroneous construct
			ErrorMsg        { Error }, -- error messages on the command line
			WarningMsg      { fg = p.wood }, -- warning messages

			Comment         { fg = p.bg.li(38).de(24), gui = comment_gui }, -- any comment
			Conceal         { fg = p.fg.da(20), gui = "bold,italic" }, -- placeholder characters substituted for concealed text (see 'conceallevel')

			Cursor          { bg = p.fg.li(20), fg = p.bg.da(20) }, -- character under the cursor
			lCursor         { Cursor, bg = Cursor.bg.da(35)  }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
			-- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
			TermCursor      { Cursor }, -- cursor in a focused terminal
			TermCursorNC    { lCursor }, -- cursor in an unfocused terminal

			CursorLine      { bg = Normal.bg.li(4) }, -- Screen-line at the cursor, when 'cursorline' is set.	Low-priority if foreground (ctermfg OR guifg) is not set.
			CursorColumn    { CursorLine }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
			ColorColumn     { bg = p.wood.de(40).da(38) }, -- used for the columns set with 'colorcolumn'

			DiffAdd         { bg = p.leaf.de(28).da(60).abs_da(diff_bg_l) }, -- diff mode: Added line |diff.txt|
			DiffChange      { bg = p.water.de(24).da(58).abs_da(diff_bg_l) }, -- diff mode: Changed line |diff.txt|
			DiffDelete      { bg = p.rose.de(40).da(58).abs_da(diff_bg_l) }, -- diff mode: Deleted line |diff.txt|
			DiffText        { bg = p.water.de(28).da(38).abs_da(diff_bg_l), fg = p.fg }, -- diff mode: Changed text within a changed line |diff.txt|

			LineNr          { fg = Normal.bg.li(30) }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
			SignColumn      { LineNr }, -- column where |signs| are displayed
			FoldColumn      { LineNr, gui = "bold" }, -- 'foldcolumn'
			Folded          { bg = Normal.bg.li(16), fg = Normal.bg.li(69) }, -- line used for closed folds
			CursorLineNr    { LineNr, fg = p.fg, gui = "bold" }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.

			-- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
			-- MsgArea      { }, -- Area for messages and cmdline
			-- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
			MoreMsg         { fg = p.leaf, gui = "bold" }, -- |more-prompt|
			NormalFloat     { bg = Normal.bg.li(8) }, -- Normal text in floating windows.
			FloatBorder     { fg = Normal.bg.li(46) }, -- Normal text in floating windows.

			Pmenu           { bg = Normal.bg.li(12) }, -- Popup menu: normal item.
			PmenuSel        { bg = Normal.bg.li(24) }, -- Popup menu: selected item.
			PmenuSbar       { bg = Normal.bg.li(40) }, -- Popup menu: scrollbar.
			PmenuThumb      { bg = Normal.bg.li(50) }, -- Popup menu: Thumb of the scrollbar.

			Search          { bg = p.blossom.de(12).da(32), fg = p.fg }, -- Last search pattern highlighting (see 'hlsearch').	Also used for similar items that need to stand out.
			IncSearch       { bg = p.blossom, fg = p.bg, gui = "bold" }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
			-- Substitute   { }, -- |:substitute| replacement text highlighting
			MatchParen      { Search }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
			-- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.

			SpellBad        { fg = Error.fg.de(30), gui = "undercurl", guisp = Error.fg }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
			SpellCap        { SpellBad, guisp = Error.fg.da(10) }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
			SpellLocal      { SpellCap }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
			SpellRare       { SpellBad, guisp = p.wood }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.

			StatusLine      { bg = p.bg.li(16), fg = p.fg }, -- status line of current window
			StatusLineNC    { bg = p.bg.li(11), fg = p.fg.li(28) }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
			TabLine         { StatusLine }, -- tab pages line, not active tab page label
			TabLineFill     { StatusLineNC }, -- tab pages line, where there are no labels
			TabLineSel      { gui = "bold" }, -- tab pages line, active tab page label
			VertSplit       { LineNr }, -- the column separating vertically split windows

			Visual          { bg = p.fg.de(18).da(68) }, -- Visual mode selection
			-- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".

			NonText         { fg = Normal.bg.li(26) }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
			SpecialKey      { NonText, gui = "italic" }, -- Unprintable characters: text displayed differently from what it really is.	But not 'listchars' whitespace. |hl-Whitespace|
			Whitespace      { NonText }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
			EndOfBuffer     { NonText }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.

			WildMenu        { bg = p.blossom, fg = p.bg }, -- current match in 'wildmenu' completion
			Directory       { gui = "bold" }, -- directory names (and other special names in listings)
			Question        { MoreMsg }, -- |hit-enter| prompt and yes/no questions
			Title           { gui = "bold" }, -- titles for output from ":set all", ":autocmd" etc.


			-- These groups are not listed as default vim groups,
			-- but they are defacto standard group names for syntax highlighting.
			-- commented out groups should chain up to their "preferred" group by
			-- default,
			-- Uncomment and edit if you want more specific syntax highlighting.

			Constant        { fg = p.fg.da(24), gui = "italic" }, -- (preferred) any constant
			-- String       { }, --   a string constant: "this is a string"
			-- Character    { }, --  a character constant: 'c', '\n'
			Number          { fg = p.fg, gui = "italic" }, --   a number constant: 234, 0xff
			Boolean         { Number }, --  a boolean constant: TRUE, false
			-- Float        { }, --    a floating point constant: 2.3e10

			Identifier      { fg = p.fg.da(14) }, -- (preferred) any variable name
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

			Type            { fg = p.bg.li(58) }, -- (preferred) int, long, char, etc.
			-- StorageClass { }, -- static, register, volatile, etc.
			-- Structure    { }, --  struct, union, enum, etc.
			-- Typedef      { }, --  A typedef

			Special         { fg = p.fg.da(12), gui = "bold" }, -- (preferred) any special symbol
			-- SpecialChar  { }, --  special character in a constant
			-- Tag          { }, --    you can use CTRL-] on this
			Delimiter       { fg = p.bg.li(52) }, --	character that needs attention
			SpecialComment  { Comment, gui = "bold" }, -- special things inside a comment
			-- Debug        { }, --    debugging statements

			-- ("Ignore", below, may be invisible...)
			-- Ignore       { }, -- (preferred) left blank, hidden	|hl-Ignore|

			Todo            { gui = "bold,underline" }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

			-- These groups are for the native LSP client. Some other LSP clients may
			-- use these groups, or use their own. Consult your LSP client's
			-- documentation.

			LspReferenceText                        { ColorColumn }, -- used for highlighting "text" references
			LspReferenceRead                        { ColorColumn }, -- used for highlighting "read" references
			LspReferenceWrite                       { ColorColumn }, -- used for highlighting "write" references

			DiagnosticError		                    { Error },
			DiagnosticWarn                          { WarningMsg },
			DiagnosticInfo                          { fg = p.water },
			DiagnosticHint                          { fg = p.blossom },

			DiagnosticVirtualTextError              { DiagnosticError, bg = p.rose.abs_de(48).da(68) },
			DiagnosticVirtualTextWarn               { DiagnosticWarn, bg = p.wood.de(58).da(68) },

			DiagnosticUnderlineError		        { DiagnosticError, gui = "undercurl" },
			DiagnosticUnderlineWarn                 { DiagnosticWarn, gui = "undercurl" },
			DiagnosticUnderlineInfo                 { DiagnosticInfo, gui = "undercurl" },
			DiagnosticUnderlineHint                 { DiagnosticHint, gui = "undercurl" },

			LspDiagnosticsDefaultError              { DiagnosticError }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
			LspDiagnosticsDefaultWarning            { DiagnosticWarn }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
			LspDiagnosticsDefaultInformation        { DiagnosticInfo }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
			LspDiagnosticsDefaultHint               { DiagnosticHint }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

			LspDiagnosticsVirtualTextError          { DiagnosticVirtualTextError }, -- Used for "Error" diagnostic virtual text
			LspDiagnosticsVirtualTextWarning        { DiagnosticVirtualTextWarn }, -- Used for "Warning" diagnostic virtual text
			-- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
			-- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

			LspDiagnosticsUnderlineError            { DiagnosticUnderlineError }, -- Used to underline "Error" diagnostics
			LspDiagnosticsUnderlineWarning          { DiagnosticUnderlineWarn }, -- Used to underline "Warning" diagnostics
			LspDiagnosticsUnderlineInformation      { DiagnosticUnderlineInfo }, -- Used to underline "Information" diagnostics
			LspDiagnosticsUnderlineHint             { DiagnosticUnderlineHint }, -- Used to underline "Hint" diagnostics

			-- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
			-- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
			-- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
			-- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

			-- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
			-- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
			-- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
			-- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

			LspCodeLens                             { LineNr },

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
			-- TSEmphasis           { };	-- For text to be represented with emphasis.
			-- TSUnderline          { };	-- For text to be represented with an underline.
			-- TSStrike             { };	-- For strikethrough text.
			-- TSTitle              { };	-- Text that is part of a title.
			-- TSLiteral            { };	-- Literal text.
			-- TSURI                { };	-- Any URI like a link or email.

			TSNote                  { LspDiagnosticsDefaultInformation },
			TSWarning               { WarningMsg },
			TSDanger                { Error },

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
			
			markdownH1                { Statement, gui = "bold,underline" },
			markdownH2                { Statement },
			markdownH3                { Statement },
			markdownH4                { Special },
			markdownH5                { Special },
			markdownH6                { Special },
			markdownCode              { Identifier },
			markdownLinkTextDelimiter { Delimiter },

			helpHyperTextEntry        { Special },
			helpHyperTextJump         { Constant },
			helpSpecial               { Type },
			helpOption                { Constant },

			-- Other plugins
			GitSignsAdd                      { fg = p.leaf },
			GitSignsChange                   { fg = p.water },
			GitSignsDelete                   { fg = p.rose },

			GitGutterAdd                     { GitSignsAdd },
			GitGutterChange                  { GitSignsChange },
			GitGutterDelete                  { GitSignsDelete },

			IndentBlanklineChar              { fg = p.bg.li(14).de(22) },

			TelescopeSelection               { CursorLine },
			TelescopeSelectionCaret          { TelescopeSelection, fg = p.rose },
			TelescopeMatching                { fg = p.blossom, gui = "bold" },
			TelescopeBorder                  { FloatBorder },

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

			CocErrorSign                     { LspDiagnosticsDefaultError },
			CocWarningSign                   { LspDiagnosticsDefaultWarning },
			CocInfoSign                      { LspDiagnosticsDefaultInformation },
			CocHintSign                      { LspDiagnosticsDefaultHint },
			CocErrorHighlight                { LspDiagnosticsUnderlineError },
			CocWarningHighlight              { LspDiagnosticsUnderlineWarning },
			CocInfoHighlight                 { LspDiagnosticsUnderlineInformation },
			CocHintHighlight                 { LspDiagnosticsUnderlineHint },
			CocErrorVirtualText              { LspDiagnosticsVirtualTextError },
			CocWarningVitualText             { LspDiagnosticsVirtualTextWarning },
			CocSelectedText                  { SpellBad },
			CocCodeLens                      { LineNr },
			CocMarkdownLink                  { fg = p.sky, gui = "underline" },

			NeogitNotificationError          { LspDiagnosticsDefaultError },
			NeogitNotificationWarning        { LspDiagnosticsDefaultWarning },
			NeogitNotificationInfo           { LspDiagnosticsDefaultInformation },

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

			NvimTreeNormal                   { NormalFloat },
			NvimTreeVertSplit                { fg = "bg" },
			NvimTreeCursorLine               { bg = StatusLineNC.bg },
			NvimTreeCursorColumn             { NvimTreeCursorLine	},
			NvimTreeRootFolder               { fg = p.water, gui = "bold" },
			NvimTreeSymlink                  { fg = p.water },
			NvimTreeGitDirty                 { diffChanged },
			NvimTreeGitNew                   { diffAdded },
			NvimTreeGitDeleted               { diffRemoved },
			NvimTreeSpecialFile              { fg = p.blossom, gui = "underline" },
		}
	end)
	-- stylua: ignore end

	local specs = {
		theme,
	}

	if opt.lighten_noncurrent_window then
		table.insert(
			specs,
			lush(function()
				return {
					NormalNC { theme.Normal, bg = theme.Normal.bg.abs_li(2) }, -- normal text in non-current windows
				}
			end)
		)
	end

	if opt.solid_vert_split then
		table.insert(
			specs,
			lush(function()
				return {
					VertSplit { bg = theme.StatusLineNC.bg, fg = theme.LineNr.fg }, -- the column separating vertically split windows
				}
			end)
		)
	end

	return lush.merge(specs)
end

return M
-- vi:nowrap
