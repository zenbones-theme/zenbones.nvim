--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require "lush"
local hsluv = lush.hsluv

local sand = hsluv(39, 12, 94)
local stone = hsluv(230, 30, 22)
local leaf = hsluv(103, 72, 46)
local water = hsluv(236, 84, 40)
local rose = hsluv(5, 70, 46)
local wood = hsluv(28, 80, 40)
local blossom = hsluv(318, 42, 42)
local white = sand.li(58)

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

		Normal          { bg = sand, fg = stone }, -- normal text

		Underlined      { gui = "underline" }, -- (preferred) text that stands out, HTML links
		Bold            { gui = "bold" },
		Italic          { gui = "italic" },

		Error           { fg = rose }, -- (preferred) any erroneous construct
		ErrorMsg        { Error }, -- error messages on the command line
		WarningMsg      { fg = wood }, -- warning messages

		Comment         { fg = sand.da(38).de(28), gui = "italic" }, -- any comment
		Conceal         { fg = stone.li(20), gui = "bold,italic" }, -- placeholder characters substituted for concealed text (see 'conceallevel')

		Cursor          { bg = stone, fg = sand.li(20) }, -- character under the cursor
		lCursor         { Cursor, bg = Cursor.bg.lighten(20)  }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		-- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
		TermCursor      { Cursor }, -- cursor in a focused terminal
		TermCursorNC    { lCursor }, -- cursor in an unfocused terminal

		CursorLine      { bg = sand.da(4) }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
		CursorColumn    { CursorLine }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		ColorColumn     { bg = wood.de(40).li(80) }, -- used for the columns set with 'colorcolumn'

		DiffAdd         { bg = leaf.de(48).li(64) }, -- diff mode: Added line |diff.txt|
		DiffChange      { bg = water.de(38).li(76) }, -- diff mode: Changed line |diff.txt|
		DiffDelete      { bg = rose.de(22).li(60) }, -- diff mode: Deleted line |diff.txt|
		DiffText        { bg = water.de(24).li(68), fg = stone }, -- diff mode: Changed text within a changed line |diff.txt|

		LineNr          { fg = sand.da(36) }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		SignColumn      { LineNr }, -- column where |signs| are displayed
		FoldColumn      { LineNr, gui = "bold" }, -- 'foldcolumn'
		Folded          { bg = sand.da(16), fg = sand.da(64) }, -- line used for closed folds
		CursorLineNr    { LineNr, fg = stone, gui = "bold" }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.

		-- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea      { }, -- Area for messages and cmdline
		-- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg         { fg = leaf, gui = "bold" }, -- |more-prompt|
		NormalFloat     { bg = sand.da(6) }, -- Normal text in floating windows.
		FloatBorder     { fg = sand.da(50) }, -- Normal text in floating windows.
		-- NormalNC     { }, -- normal text in non-current windows

		Pmenu           { bg = sand.da(10) }, -- Popup menu: normal item.
		PmenuSel        { bg = sand.da(20) }, -- Popup menu: selected item.
		PmenuSbar       { bg = sand.da(30) }, -- Popup menu: scrollbar.
		PmenuThumb      { bg = white }, -- Popup menu: Thumb of the scrollbar.

		Search          { bg = blossom.de(10).lighten(54), fg = stone }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		IncSearch       { bg = blossom, fg = sand, gui = "bold" }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		-- Substitute   { }, -- |:substitute| replacement text highlighting
		MatchParen      { Search }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		-- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.

		SpellBad        { fg = Error.fg.de(40), gui = "undercurl", guisp = Error.fg }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap        { SpellBad, guisp = Error.fg.li(10) }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal      { SpellCap }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare       { SpellBad, guisp = wood }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.

		StatusLine      { bg = sand.da(16), fg = stone }, -- status line of current window
		StatusLineNC    { bg = sand.da(10), fg = stone.li(28) }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine         { StatusLine, gui = "italic" }, -- tab pages line, not active tab page label
		TabLineFill     { StatusLineNC }, -- tab pages line, where there are no labels
		TabLineSel      { Bold }, -- tab pages line, active tab page label
		VertSplit       { fg = white }, -- the column separating vertically split windows

		Visual          { bg = stone.li(84) }, -- Visual mode selection
		-- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".

		NonText         { fg = sand.da(22) }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		SpecialKey      { NonText, gui = "italic" }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		Whitespace      { NonText }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		EndOfBuffer     { NonText }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.

		WildMenu        { bg = blossom, fg = sand }, -- current match in 'wildmenu' completion
		Directory       { Bold }, -- directory names (and other special names in listings)
		Question        { MoreMsg }, -- |hit-enter| prompt and yes/no questions
		Title           { Bold }, -- titles for output from ":set all", ":autocmd" etc.


		-- These groups are not listed as default vim groups,
		-- but they are defacto standard group names for syntax highlighting.
		-- commented out groups should chain up to their "preferred" group by
		-- default,
		-- Uncomment and edit if you want more specific syntax highlighting.

		Constant        { fg = stone.li(24), gui = "italic" }, -- (preferred) any constant
		-- String       { }, --   a string constant: "this is a string"
		-- Character    { }, --  a character constant: 'c', '\n'
		-- Number       { }, --   a number constant: 234, 0xff
		-- Boolean      { }, --  a boolean constant: TRUE, false
		-- Float        { }, --    a floating point constant: 2.3e10

		Identifier      { fg = stone.li(16) }, -- (preferred) any variable name
		Function        { fg = stone }, -- function name (also: methods for classes)

		Statement       { fg = stone, gui = "bold" }, -- (preferred) any statement
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

		Type            { fg = sand.da(62) }, -- (preferred) int, long, char, etc.
		-- StorageClass { }, -- static, register, volatile, etc.
		-- Structure    { }, --  struct, union, enum, etc.
		-- Typedef      { }, --  A typedef

		Special         { fg = stone.li(24), gui = "bold" }, -- (preferred) any special symbol
		-- SpecialChar  { }, --  special character in a constant
		-- Tag          { }, --    you can use CTRL-] on this
		Delimiter       { fg = sand.da(42) }, --  character that needs attention
		SpecialComment  { Comment, gui = "bold" }, -- special things inside a comment
		-- Debug        { }, --    debugging statements

		-- ("Ignore", below, may be invisible...)
		-- Ignore       { }, -- (preferred) left blank, hidden  |hl-Ignore|

		Todo            { gui = "bold,underline" }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		-- These groups are for the native LSP client. Some other LSP clients may
		-- use these groups, or use their own. Consult your LSP client's
		-- documentation.

		-- LspReferenceText                     { }, -- used for highlighting "text" references
		-- LspReferenceRead                     { }, -- used for highlighting "read" references
		-- LspReferenceWrite                    { }, -- used for highlighting "write" references

		LspDiagnosticsDefaultError              { Error }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		LspDiagnosticsDefaultWarning            { WarningMsg }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		LspDiagnosticsDefaultInformation        { fg = water }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		LspDiagnosticsDefaultHint               { fg = blossom }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

		-- LspDiagnosticsVirtualTextError       { }, -- Used for "Error" diagnostic virtual text
		-- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
		-- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
		-- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

		LspDiagnosticsUnderlineError            { LspDiagnosticsDefaultError, gui = "undercurl" }, -- Used to underline "Error" diagnostics
		LspDiagnosticsUnderlineWarning          { LspDiagnosticsDefaultWarning, gui = "undercurl" }, -- Used to underline "Warning" diagnostics
		LspDiagnosticsUnderlineInformation      { LspDiagnosticsDefaultInformation, gui = "undercurl" }, -- Used to underline "Information" diagnostics
		LspDiagnosticsUnderlineHint             { LspDiagnosticsDefaultHint, gui = "undercurl" }, -- Used to underline "Hint" diagnostics

		-- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
		-- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
		-- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
		-- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

		-- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
		-- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
		-- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
		-- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

		-- These groups are for the neovim tree-sitter highlights.
		-- As of writing, tree-sitter support is a WIP, group names may change.
		-- By default, most of these groups link to an appropriate Vim group,
		-- TSError -> Error for example, so you do not have to define these unless
		-- you explicitly want to support Treesitter's improved syntax awareness.

		-- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
		-- TSAttribute          { };    -- (unstable) TODO: docs
		-- TSBoolean            { };    -- For booleans.
		-- TSCharacter          { };    -- For characters.
		-- TSComment            { };    -- For comment blocks.
		-- TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
		-- TSConditional        { };    -- For keywords related to conditionnals.
		-- TSConstant           { };    -- For constants
		-- TSConstBuiltin       { };    -- For constant that are built in the language: `nil` in Lua.
		-- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
		-- TSError              { };    -- For syntax/parser errors.
		-- TSException          { };    -- For exception related keywords.
		-- TSField              { };    -- For fields.
		-- TSFloat              { };    -- For floats.
		-- TSFunction           { };    -- For function (calls and definitions).
		-- TSFuncBuiltin        { };    -- For builtin functions: `table.insert` in Lua.
		-- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		-- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		-- TSKeyword            { };    -- For keywords that don't fall in previous categories.
		-- TSKeywordFunction    { };    -- For keywords used to define a fuction.
		-- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
		-- TSMethod             { };    -- For method calls and definitions.
		-- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
		-- TSNone               { };    -- TODO: docs
		-- TSNumber             { };    -- For all numbers
		-- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
		-- TSParameter          { };    -- For parameters of a function.
		-- TSParameterReference { };    -- For references to parameters of a function.
		-- TSProperty           { };    -- Same as `TSField`.
		-- TSPunctDelimiter     { };    -- For delimiters ie: `.`
		-- TSPunctBracket       { };    -- For brackets and parens.
		-- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
		-- TSRepeat             { };    -- For keywords related to loops.
		-- TSString             { };    -- For strings.
		-- TSStringRegex        { };    -- For regexes.
		-- TSStringEscape       { };    -- For escape characters within a string.
		-- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
		-- TSType               { };    -- For types.
		-- TSTypeBuiltin        { };    -- For builtin types.
		TSVariable              { Identifier }, -- Any variable name that does not have another highlight.
		-- TSVariableBuiltin    { };    -- Variable names that are defined by the languages, like `this` or `self`.

		TSTag                   { fg = stone.li(20), gui = "bold" }, -- Tags like html tag names.
		-- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
		-- TSText               { };    -- For strings considered text in a markup language.
		-- TSEmphasis           { };    -- For text to be represented with emphasis.
		-- TSUnderline          { };    -- For text to be represented with an underline.
		-- TSStrike             { };    -- For strikethrough text.
		-- TSTitle              { };    -- Text that is part of a title.
		-- TSLiteral            { };    -- Literal text.
		-- TSURI                { };    -- Any URI like a link or email.

		-- Other plugins
		GitSignsAdd             { fg = leaf },
		GitSignsChange          { fg = water },
		GitSignsDelete          { fg = rose },

		IndentBlanklineChar     { fg = sand.da(12).de(20) },

		TelescopeSelection      { CursorLine },
		TelescopeSelectionCaret { TelescopeSelection, fg = rose },
		TelescopeMatching       { fg = blossom, gui = "bold" },
		TelescopeBorder         { FloatBorder },

		Sneak                   { Search },
		SneakLabel              { WildMenu },
		SneakLabelMask          { bg = blossom, fg = blossom }
	}
end)
-- stylua: ignore end

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
