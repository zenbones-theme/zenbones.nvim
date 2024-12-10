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
			Folded          { bg = not opt.transparent_background and p1.bg.li(14) or "NONE", fg = p1.bg.li(64) }, -- line used for closed folds
			CursorLineNr    { LineNr, fg = p.fg, gui = "bold" }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.

			ModeMsg         { Normal }, -- 'showmode' message (e.g., "-- INSERT -- ")
			-- MsgArea      { }, -- Area for messages and cmdline
			-- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
			MoreMsg         { fg = p.leaf, gui = "bold" }, -- |more-prompt|

			NormalFloat     { bg = p1.bg.li(10) }, -- Normal text in floating windows.
			FloatBorder     { fg = p1.bg.li(46), bg = opt.solid_float_border and NormalFloat.bg or "NONE" }, -- Normal text in floating windows.
			-- FloatTitle      { },
			-- FloatFooter     { },

			Pmenu           { bg = p1.bg.li(10) }, -- Popup menu: normal item.
			PmenuSel        { bg = p1.bg.li(22) }, -- Popup menu: selected item.
			-- PmenuKind       { },
			-- PmenuKindSel    { },
			-- PmenuKindExtra  { },
			-- PmenuKindExtraSel { },
			PmenuSbar       { bg = p1.bg.li(32) }, -- Popup menu: scrollbar.
			PmenuThumb      { bg = p1.bg.li(50) }, -- Popup menu: Thumb of the scrollbar.

			Search          { bg = p.blossom.lightness(p1.bg.l + 24), fg = p.fg }, -- Last search pattern highlighting (see 'hlsearch').	Also used for similar items that need to stand out.
			IncSearch       { bg = p.blossom.lightness(p1.bg.l + 56), fg = p1.bg, gui = "bold" }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
			-- Substitute   { }, -- |:substitute| replacement text highlighting
			MatchParen      { Search }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
			QuickFixLine    { Search }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
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
			WinBar          { StatusLine },
			WinBarNC        { StatusLineNC },
			WinSeparator    { fg = LineNr.fg, bg = opt.solid_vert_split and StatusLineNC.bg or "NONE" },
			VertSplit       { WinSeparator },

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
			String          { Constant }, --   a string constant: "this is a string"
			Character       { Constant }, --  a character constant: 'c', '\n'
			Number          { fg = p1.fg4 }, --   a number constant: 234, 0xff
			Boolean         { fg = p.fg, gui = "italic" }, --  a boolean constant: TRUE, false
			Float           { Number }, --    a floating point constant: 2.3e10

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
			LspInlayHint               { fg = p1.bg.sa(10).li(40), bg = p1.bg.li(4) },

			DiagnosticError            { Error },
			DiagnosticWarn             { WarningMsg },
			DiagnosticInfo             { fg = p.water },
			DiagnosticHint             { fg = p.blossom },
			DiagnosticOk               { fg = p.leaf },
			DiagnosticDeprecated       { DiagnosticWarn },
			DiagnosticUnnecessary      { DiagnosticWarn },

			DiagnosticSignError        { SignColumn, fg = DiagnosticError.fg },
			DiagnosticSignWarn         { SignColumn, fg = DiagnosticWarn.fg },
			DiagnosticSignInfo         { SignColumn, fg = DiagnosticInfo.fg },
			DiagnosticSignHint         { SignColumn, fg = DiagnosticHint.fg },
			DiagnosticSignOk           { SignColumn, fg = DiagnosticOk.fg },

			DiagnosticVirtualTextError { DiagnosticError, bg = DiagnosticError.fg.saturation(8).lightness(p1.bg.l + 4) },
			DiagnosticVirtualTextWarn  { DiagnosticWarn, bg = DiagnosticWarn.fg.saturation(8).lightness(p1.bg.l + 4) },
			DiagnosticVirtualTextInfo  { DiagnosticInfo, bg = DiagnosticInfo.fg.saturation(8).lightness(p1.bg.l + 4) },
			DiagnosticVirtualTextHint  { DiagnosticHint, bg = DiagnosticHint.fg.saturation(8).lightness(p1.bg.l + 4) },
			DiagnosticVirtualTextOk    { DiagnosticOk, bg = DiagnosticOk.fg.saturation(8).lightness(p1.bg.l + 4) },

			DiagnosticUnderlineError   { fg = opt.colorize_diagnostic_underline_text and DiagnosticError.fg or "NONE", gui = "undercurl", sp = DiagnosticError.fg },
			DiagnosticUnderlineWarn    { fg = opt.colorize_diagnostic_underline_text and DiagnosticWarn.fg or "NONE", gui = "undercurl", sp = DiagnosticWarn.fg },
			DiagnosticUnderlineInfo    { fg = opt.colorize_diagnostic_underline_text and DiagnosticInfo.fg or "NONE", gui = "undercurl", sp = DiagnosticInfo.fg },
			DiagnosticUnderlineHint    { fg = opt.colorize_diagnostic_underline_text and DiagnosticHint.fg or "NONE", gui = "undercurl", sp = DiagnosticHint.fg },
			DiagnosticUnderlineOk      { fg = opt.colorize_diagnostic_underline_text and DiagnosticOk.fg or "NONE", gui = "undercurl", sp = DiagnosticOk.fg },

			-- Tree-sitter
			sym "@variable"                     { Identifier },
			sym "@variable.builtin"             { Constant },
			sym "@variable.parameter"           { sym "@variable" },
			sym "@variable.member"              { sym "@variable" },

			sym "@constant"                     { Identifier, gui = "bold" },
			sym "@constant.builtin"             { Constant },
			sym "@constant.macro"               { Constant },

			sym "@module"                       { Constant },
			sym "@module.builtin"               { sym "@module" },
			sym "@label"                        { Statement },

			sym "@string"                       { String },
			sym "@string.documentation"         { sym "@string" },
			sym "@string.regexp"                { Constant },
			sym "@string.escape"                { Special },
			sym "@string.special"               { Special },
			sym "@string.special.symbol"        { Identifier },
			sym "@string.special.url"           { sym "@string.special" },
			sym "@string.special.path"          { sym "@string.special" },

			sym "@character"                    { Constant },
			sym "@character.special"            { Special },

			sym "@boolean"                      { Boolean },
			sym "@number"                       { Number },
			sym "@number.float"                 { sym "@number" },

			sym "@type"                         { Type },
			sym "@type.builtin"                 { sym "@type" },
			sym "@type.definition"              { sym "@type" },
			sym "@type.qualifier"               { sym "@type" },

			sym "@attribute"                    { PreProc },
			sym "@property"                     { Identifier },

			sym "@function"                     { Function },
			sym "@function.builtin"             { Special },
			sym "@function.call"                { sym "@function" },
			sym "@function.macro"               { PreProc },

			sym "@function.method"              { sym "@function" },
			sym "@function.method.call"         { sym "@function" },

			sym "@constructor"                  { Special },
			sym "@operator"                     { Statement },

			sym "@keyword.coroutine"            { Statement },
			sym "@keyword.function"             { Statement },
			sym "@keyword.operator"             { Statement },
			sym "@keyword.import"               { PreProc },
			sym "@keyword.storage"              { Type },
			sym "@keyword.repeat"               { Statement },
			sym "@keyword.return"               { Statement },
			sym "@keyword.debug"                { Special },
			sym "@keyword.exception"            { Statement },

			sym "@keyword.conditional"          { Statement },
			sym "@keyword.conditional.ternary"  { sym "@keyword.conditional" },
			sym "@keyword.directive"            { PreProc },
			sym "@keyword.directive.define"     { sym "@keyword.directive" },

			sym "@punctuation.delimiter"        { Delimiter },
			sym "@punctuation.bracket"          { Delimiter },
			sym "@punctuation.special"          { Delimiter },

			sym "@comment"                      { Comment },
			sym "@comment.documentation"        { sym "@comment" },

			sym "@comment.error"                { Error },
			sym "@comment.warning"              { WarningMsg },
			sym "@comment.todo"                 { Todo },
			sym "@comment.note"                 { DiagnosticInfo },

			sym "@markup.strong"                { Bold },
			sym "@markup.italic"                { Italic },
			sym "@markup.strikethrough"         { gui = "strikethrough" },
			sym "@markup.underline"             { Underlined },

			sym "@markup.heading"               { Title },

			sym "@markup.quote"                 { fg = p1.fg4 },
			sym "@markup.math"                  { Special },
			sym "@markup.environment"           { PreProc },

			sym "@markup.link"                  { Constant },
			sym "@markup.link.label"            { Special },
			sym "@markup.link.url"              { Constant },

			sym "@markup.raw"                   { Constant },
			sym "@markup.raw.block"             { sym "@markup.raw" },

			sym "@markup.list"                  { Special },
			sym "@markup.list.checked"          { sym "@markup.list" },
			sym "@markup.list.unchecked"        { sym "@markup.list" },

			sym "@diff.plus"                    { DiffAdd },
			sym "@diff.minus"                   { DiffDelete },
			sym "@diff.delta"                   { DiffChange },

			sym "@tag"                          { Special },
			sym "@tag.attribute"                { sym "@property" },
			sym "@tag.delimiter"                { Delimiter },

			sym "@none"                         { },

			sym "@punctuation.special.markdown" { Special },
			sym "@string.escape.markdown"       { SpecialKey },
			sym "@markup.link.markdown"         { Identifier, gui = "underline" },
			sym "@markup.italic.markdown"       { Italic },
			sym "@markup.title.markdown"        { Statement },
			sym "@markup.raw.markdown"          { Type },
			sym "@markup.link.url.markdown"     { SpecialComment },

			sym "@markup.link.vimdoc"           { Identifier, gui = "underline" },
			sym "@markup.raw.block.vimdoc"      { fg = 'NONE' },
			sym "@variable.parameter.vimdoc"    { Type },
			sym "@label.vimdoc"                 { Type, gui = "bold" },

			sym "@constructor.lua"                  { Delimiter },

			-- LSP Semantic Token Groups
			sym "@lsp.type.boolean"                       { sym "@boolean" },
			sym "@lsp.type.builtinType"                   { sym "@type.builtin" },
			sym "@lsp.type.comment"                       { sym "@comment" },
			sym "@lsp.type.decorator"                     { sym "@attribute" },
			sym "@lsp.type.deriveHelper"                  { sym "@attribute" },
			sym "@lsp.type.enum"                          { sym "@type" },
			sym "@lsp.type.enumMember"                    { sym "@constant" },
			sym "@lsp.type.escapeSequence"                { sym "@string.escape" },
			sym "@lsp.type.formatSpecifier"               { sym "@markup.list" },
			sym "@lsp.type.generic"                       { sym "@variable" },
			sym "@lsp.type.interface"                     { sym "@type" },
			sym "@lsp.type.keyword"                       { Statement },
			sym "@lsp.type.lifetime"                      { sym "@keyword.storage" },
			sym "@lsp.type.namespace"                     { sym "@module" },
			sym "@lsp.type.number"                        { sym "@number" },
			sym "@lsp.type.operator"                      { sym "@operator" },
			sym "@lsp.type.parameter"                     { sym "@variable.parameter" },
			sym "@lsp.type.property"                      { sym "@property" },
			sym "@lsp.type.selfKeyword"                   { sym "@variable.builtin" },
			sym "@lsp.type.selfTypeKeyword"               { sym "@variable.builtin" },
			sym "@lsp.type.string"                        { sym "@string" },
			sym "@lsp.type.typeAlias"                     { sym "@type.definition" },
			sym "@lsp.type.unresolvedReference"           { gui = "undercurl", sp = Error.fg },
			sym "@lsp.type.variable"                      { },
			sym "@lsp.typemod.class.defaultLibrary"       { sym "@type.builtin" },
			sym "@lsp.typemod.enum.defaultLibrary"        { sym "@type.builtin" },
			sym "@lsp.typemod.enumMember.defaultLibrary"  { sym "@constant.builtin" },
			sym "@lsp.typemod.function.defaultLibrary"    { sym "@function.builtin" },
			sym "@lsp.typemod.keyword.async"              { sym "@keyword.coroutine" },
			sym "@lsp.typemod.keyword.injected"           { Statement },
			sym "@lsp.typemod.macro.defaultLibrary"       { sym "@function.builtin" },
			sym "@lsp.typemod.method.defaultLibrary"      { sym "@function.builtin" },
			sym "@lsp.typemod.operator.injected"          { sym "@operator" },
			sym "@lsp.typemod.string.injected"            { sym "@string" },
			sym "@lsp.typemod.struct.defaultLibrary"      { sym "@type.builtin" },
			sym "@lsp.typemod.type.defaultLibrary"        { sym "@type" },
			sym "@lsp.typemod.typeAlias.defaultLibrary"   { sym "@type" },
			sym "@lsp.typemod.variable.callable"          { sym "@function" },
			sym "@lsp.typemod.variable.defaultLibrary"    { sym "@variable.builtin" },
			sym "@lsp.typemod.variable.injected"          { sym "@variable" },
			sym "@lsp.typemod.variable.static"            { sym "@constant" },

			-- Syntax
			diffAdded                 { DiffAdd },
			diffRemoved               { DiffDelete },
			diffChanged               { DiffChange },
			diffOldFile               { fg = p.rose, gui = "italic" },
			diffNewFile               { fg = p.leaf, gui = "italic" },
			diffFile                  { fg = p.wood, gui = "bold" },
			diffLine                  { fg = p.blossom, gui = "bold" },
			diffIndexLine             { fg = p.wood },

			gitcommitOverflow         { WarningMsg },

			markdownUrl               { SpecialComment },
			markdownCode              { Type },
			markdownLinkText          { Identifier, gui = "underline" },
			markdownLinkTextDelimiter { Delimiter },

			helpHyperTextEntry        { Type, gui = "bold" },
			helpHyperTextJump         { Identifier, gui = "underline" },
			helpSpecial               { Type },
			helpOption                { Constant },

			-- Other plugins
			GitSignsAdd                      { SignColumn, fg = p.leaf },
			GitSignsChange                   { SignColumn, fg = p.water },
			GitSignsDelete                   { SignColumn, fg = p.rose },

			GitGutterAdd                     { GitSignsAdd },
			GitGutterChange                  { GitSignsChange },
			GitGutterDelete                  { GitSignsDelete },

			IblIndent                        { fg = p1.bg.li(8).de(22) },
			IblScope                         { fg = p1.bg.li(22).de(22) },
			IndentLine                       { IblIndent },
			IndentLineCurrent                { IblScope },
			SnacksIndent                     { fg = p1.bg.li(8).de(22) },
			SnacksIndentScope                { fg = p1.bg.li(22).de(22) },

			TelescopeSelection               { CursorLine },
			TelescopeSelectionCaret          { TelescopeSelection, fg = p.rose },
			TelescopeMatching                { fg = p.blossom, gui = "bold" },
			TelescopeBorder                  { fg = FloatBorder.fg },

			FzfLuaHeaderBind                 { fg = p.leaf },
			FzfLuaHeaderText                 { fg = p.wood },
			FzfLuaPathColNr                  { Type, gui = "bold" },
			FzfLuaPathLineNr                 { FzfLuaPathColNr },
			FzfLuaBufName                    { Statement },
			FzfLuaBufNr                      { fg = p.leaf },
			FzfLuaBufFlagCur                 { fg = p.wood },
			FzfLuaBufFlagAlt                 { fg = p.water },
			FzfLuaTabTitle                   { fg = p.sky },
			FzfLuaTabMarker                  { fg = p.leaf },
			FzfLuaLiveSym                    { fg = p.wood },

			Sneak                            { Search },
			SneakLabel                       { WildMenu },
			SneakLabelMask                   { bg = p.blossom, fg = p.blossom },

			LeapMatch                        { gui = "bold,underline,nocombine" },
			LeapBackdrop                     { gui = "nocombine", fg = p.bg.lightness(p.bg.l + 20) },
			LeapLabel                        { fg = p.blossom.lightness(p1.bg.l + 56).sa(80), gui = "bold" },

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
			CocWarningVirtualText            { DiagnosticVirtualTextWarn },
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

			FlashLabel                       { bg = p.water.lightness(p1.bg.l + 24), fg = p.fg },
			FlashBackdrop                    { fg = Comment.fg },

			NotifyERRORIcon                  { DiagnosticError },
			NotifyERRORTitle                 { DiagnosticError },
			NotifyWARNIcon                   { DiagnosticWarn },
			NotifyWARNTitle                  { DiagnosticWarn },
			NotifyINFOIcon                   { DiagnosticInfo },
			NotifyINFOTitle                  { DiagnosticInfo },
			NotifyDEBUGIcon                  { DiagnosticHint },
			NotifyDEBUGTitle                 { DiagnosticHint },
			NotifyTRACEIcon                  { DiagnosticHint },
			NotifyTRACETitle                 { DiagnosticHint },

			RenderMarkdownCode { bg = LspInlayHint.bg },
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

	return lush.merge(specs)
end

return generate
-- vi:nowrap
