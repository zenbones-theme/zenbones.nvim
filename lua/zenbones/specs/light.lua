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
	local base = lush(function(injected_functions)
		-- functions are injected via a table for future expansion
		-- you probably want to alias it locally
		local sym = injected_functions.sym
		return {
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
			DiagnosticDeprecated       { DiagnosticWarn },
			DiagnosticUnnecessary      { DiagnosticWarn },

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

			-- Tree-sitter
			sym "@annotation"            { PreProc },
			sym "@attribute"             { PreProc },
			sym "@boolean"               { Number },
			sym "@character"             { Constant },
			sym "@character.special"     { Special },
			sym "@comment"               { Comment },
			sym "@conditional"           { Statement },
			sym "@constant"              { Identifier, gui = "bold" },
			sym "@constant.builtin"      { Number },
			sym "@constant.macro"        { Number },
			sym "@constructor"           { Special },
			sym "@debug"                 { Special },
			sym "@define"                { PreProc },
			sym "@exception"             { Statement },
			sym "@field"                 { Identifier },
			sym "@float"                 { Number },
			sym "@function"              { Function },
			sym "@function.builtin"      { Special },
			sym "@function.call"         { Function },
			sym "@function.macro"        { PreProc },
			sym "@include"               { PreProc },
			sym "@keyword"               { Statement },
			sym "@keyword.function"      { Statement },
			sym "@keyword.operator"      { Statement },
			sym "@keyword.return"        { Statement },
			sym "@keyword.coroutine"     { Statement },
			sym "@label"                 { Statement },
			sym "@method"                { Function },
			sym "@method.call"           { Function },
			sym "@namespace"             { Special },
			sym "@none"                  { },
			sym "@number"                { Number },
			sym "@operator"              { Statement },
			sym "@parameter"             { Identifier },
			sym "@parameter.reference"   { sym "@parameter" },
			sym "@preproc"               { PreProc },
			sym "@property"              { Identifier },
			sym "@punctuation.bracket"   { Delimiter },
			sym "@punctuation.delimiter" { Delimiter },
			sym "@punctuation.special"   { Delimiter },
			sym "@repeat"                { Statement },
			sym "@storageclass"          { Type },
			sym "@string"                { Constant },
			sym "@string.escape"         { Special },
			sym "@string.regex"          { Constant },
			sym "@string.special"        { Special },
			sym "@symbol"                { Identifier },
			sym "@tag"                   { Special },
			sym "@tag.attribute"         { sym "@property" },
			sym "@tag.delimiter"         { Delimiter },
			sym "@text"                  { sym "@none" },
			sym "@text.danger"           { Error },
			sym "@text.emphasis"         { Italic },
			sym "@text.environment"      { PreProc },
			sym "@text.environment.name" { Type },
			sym "@text.literal"          { Constant },
			sym "@text.math"             { Special },
			sym "@text.note"             { DiagnosticInfo },
			sym "@text.reference"        { Constant },
			sym "@text.strike"           { gui = "strikethrough" },
			sym "@text.strong"           { Bold },
			sym "@text.title"            { Title },
			sym "@text.underline"        { Underlined },
			sym "@text.uri"              { Underlined },
			sym "@text.warning"          { WarningMsg },
			sym "@text.todo"             { Todo },
			sym "@type"                  { Type },
			sym "@type.builtin"          { Type },
			sym "@type.definition"       { Type },
			sym "@type.qualifier"        { Type },
			sym "@variable"              { Identifier },
			sym "@variable.builtin"      { Number },

			sym "@punctuation.special.markdown" { Special },
			sym "@string.escape.markdown"       { SpecialKey },
			sym "@text.reference.markdown"      { Identifier, gui = "underline" },
			sym "@text.emphasis.markdown"       { Italic },
			sym "@text.title.markdown"          { Statement },
			sym "@text.literal.markdown"        { Type },
			sym "@text.uri.markdown"            { SpecialComment },

			-- LSP Semantic Token Groups
			sym "@lsp.type.boolean"                    { sym "@boolean" },
			sym "@lsp.type.builtinType"                { sym "@type.builtin" },
			sym "@lsp.type.comment"                    { sym "@comment" },
			sym "@lsp.type.enum"                       { sym "@type" },
			sym "@lsp.type.enumMember"                 { sym "@constant" },
			sym "@lsp.type.escapeSequence"             { sym "@string.escape" },
			sym "@lsp.type.formatSpecifier"            { sym "@punctuation.special" },
			sym "@lsp.type.keyword"                    { sym "@keyword" },
			sym "@lsp.type.namespace"                  { sym "@namespace" },
			sym "@lsp.type.number"                     { sym "@number" },
			sym "@lsp.type.parameter"                  { sym "@parameter" },
			sym "@lsp.type.property"                   { sym "@property" },
			sym "@lsp.type.selfKeyword"                { sym "@variable.builtin" },
			sym "@lsp.type.string.rust"                { sym "@string" },
			sym "@lsp.type.typeAlias"                  { sym "@type.definition" },
			sym "@lsp.type.unresolvedReference"        { gui = "undercurl", sp = Error.fg },
			sym "@lsp.type.variable"                   { sym "@variable" },
			sym "@lsp.typemod.class.defaultLibrary"    { sym "@type.builtin" },
			sym "@lsp.typemod.enum.defaultLibrary"     { sym "@type.builtin" },
			sym "@lsp.typemod.enumMember.defaultLibrary" { sym "@constant.builtin" },
			sym "@lsp.typemod.method.defaultLibrary"   { sym "@function.builtin" },
			sym "@lsp.typemod.function.defaultLibrary" { sym "@function.builtin" },
			sym "@lsp.typemod.macro.defaultLibrary"    { sym "@function.builtin" },
			sym "@lsp.typemod.keyword.async"           { sym "@keyword.coroutine" },
			sym "@lsp.typemod.operator.injected"       { sym "@operator" },
			sym "@lsp.typemod.string.injected"         { sym "@string" },
			sym "@lsp.typemod.variable.defaultLibrary" { sym "@variable.builtin" },
			sym "@lsp.typemod.variable.injected"       { sym "@variable" },

			-- Syntax
			diffAdded                 { fg = p.leaf },
			diffRemoved               { fg = p.rose },
			diffChanged               { fg = p.water },
			diffOldFile               { fg = p.rose, gui = "italic" },
			diffNewFile               { fg = p.leaf, gui = "italic" },
			diffFile                  { fg = p.wood, gui = "bold" },
			diffLine                  { fg = p.blossom, gui = "bold" },
			diffIndexLine             { fg = p.wood },

			sym "@text.diff.add"      { diffAdded },
			sym "@text.diff.delete"   { diffRemoved },

			gitcommitOverflow         { WarningMsg },

			markdownUrl               { SpecialComment },
			markdownCode              { Type },
			markdownLinkText          { Identifier, gui = "underline" },
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
			WhichKeySeparator                { fg = LineNr.fg },
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

			NoiceCmdlineIcon                 { fg = p.water },
			NoiceCmdlineIconSearch           { WarningMsg },
			NoiceCmdlinePopupBorder          { NoiceCmdlineIcon },
			NoiceCmdlinePopupBorderSearch    { WarningMsg },
			NoiceCmdlinePopupTitle           { NoiceCmdlineIcon },
			NoiceCompletionItemKindDefault   { fg = p1.fg4 },
			NoiceConfirmBorder               { NoiceCmdlineIcon },

			FlashLabel                       { bg = p.water.lightness(p1.bg.l - 15), fg = p.fg },
			FlashBackdrop                    { fg = Comment.fg },
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
