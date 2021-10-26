" This file is auto-generated from lua/zenbones/template/vim.lua
if exists('g:colors_name')
    highlight clear
endif

set background=dark
let g:colors_name = 'zenflesh'

let g:terminal_color_0 = '#1C1917'
let g:terminal_color_1 = '#DE6E7C'
let g:terminal_color_2 = '#819B69'
let g:terminal_color_3 = '#B77E64'
let g:terminal_color_4 = '#6099C0'
let g:terminal_color_5 = '#B279A7'
let g:terminal_color_6 = '#66A5AD'
let g:terminal_color_7 = '#B4BDC3'
let g:terminal_color_8 = '#403833'
let g:terminal_color_9 = '#E8838F'
let g:terminal_color_10 = '#8BAE68'
let g:terminal_color_11 = '#D68C67'
let g:terminal_color_12 = '#61ABDA'
let g:terminal_color_13 = '#CF86C1'
let g:terminal_color_14 = '#65B8C1'
let g:terminal_color_15 = '#888F94'

if has('nvim') && (!exists('g:zenbones_compat') || g:zenbones_compat == 0)
    lua package.loaded["zenflesh"] = nil
    lua require "lush"(require "zenflesh", { force_clean = false })
    finish
else
highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight BufferVisible guifg=#CAD0D4 guibg=NONE guisp=NONE gui=NONE
highlight BufferVisibleIndex guifg=#CAD0D4 guibg=NONE guisp=NONE gui=NONE
highlight BufferVisibleSign guifg=#CAD0D4 guibg=NONE guisp=NONE gui=NONE
highlight CmpItemAbbr guifg=#979FA4 guibg=NONE guisp=NONE gui=NONE
highlight CmpItemAbbrDeprecated guifg=#64696D guibg=NONE guisp=NONE gui=NONE
highlight CmpItemAbbrMatch guifg=#B4BDC3 guibg=NONE guisp=NONE gui=bold
highlight CmpItemAbbrMatchFuzzy guifg=#9FA7AD guibg=NONE guisp=NONE gui=bold
highlight CmpItemKind guifg=#868C91 guibg=NONE guisp=NONE gui=NONE
highlight CmpItemMenu guifg=#797F84 guibg=NONE guisp=NONE gui=NONE
highlight CocMarkdownLink guifg=#66A5AD guibg=NONE guisp=NONE gui=underline
highlight ColorColumn guifg=NONE guibg=#55392C guisp=NONE gui=NONE
highlight Comment guifg=#6E6763 guibg=NONE guisp=NONE gui=italic
highlight Conceal guifg=#797F84 guibg=NONE guisp=NONE gui=bold,italic
highlight Constant guifg=#868C91 guibg=NONE guisp=NONE gui=italic
highlight Cursor guifg=#1C1917 guibg=#C4CACF guisp=NONE gui=NONE
highlight CursorLine guifg=NONE guibg=#25211F guisp=NONE gui=NONE
highlight CursorLineNr guifg=#B4BDC3 guibg=NONE guisp=NONE gui=bold
highlight Delimiter guifg=#867A74 guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticHint guifg=#B279A7 guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticInfo guifg=#6099C0 guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticUnderlineError guifg=#DE6E7C guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineHint guifg=#B279A7 guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineInfo guifg=#6099C0 guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineWarn guifg=#B77E64 guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticVirtualTextError guifg=#DE6E7C guibg=#251B1C guisp=NONE gui=NONE
highlight DiagnosticVirtualTextWarn guifg=#B77E64 guibg=#211D1B guisp=NONE gui=NONE
highlight DiffAdd guifg=NONE guibg=#232D1A guisp=NONE gui=NONE
highlight DiffChange guifg=NONE guibg=#1D2C36 guisp=NONE gui=NONE
highlight DiffDelete guifg=NONE guibg=#3E2225 guisp=NONE gui=NONE
highlight DiffText guifg=#B4BDC3 guibg=#324757 guisp=NONE gui=NONE
highlight Directory guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight Error guifg=#DE6E7C guibg=NONE guisp=NONE gui=NONE
highlight FloatBorder guifg=#837771 guibg=NONE guisp=NONE gui=NONE
highlight FoldColumn guifg=#5C534F guibg=NONE guisp=NONE gui=bold
highlight Folded guifg=#AFA099 guibg=#3E3835 guisp=NONE gui=NONE
highlight Function guifg=#B4BDC3 guibg=NONE guisp=NONE gui=NONE
highlight GitSignsAdd guifg=#819B69 guibg=NONE guisp=NONE gui=NONE
highlight GitSignsChange guifg=#6099C0 guibg=NONE guisp=NONE gui=NONE
highlight GitSignsDelete guifg=#DE6E7C guibg=NONE guisp=NONE gui=NONE
highlight HopNextKey2 guifg=#6099C0 guibg=NONE guisp=NONE gui=NONE
highlight Identifier guifg=#979FA4 guibg=NONE guisp=NONE gui=NONE
highlight IncSearch guifg=#1C1917 guibg=#BF8FB5 guisp=NONE gui=bold
highlight IndentBlanklineChar guifg=#383432 guibg=NONE guisp=NONE gui=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight LightspeedGreyWash guifg=#6E6763 guibg=NONE guisp=NONE gui=NONE
highlight LightspeedLabel guifg=#B279A7 guibg=NONE guisp=NONE gui=bold,underline
highlight LightspeedLabelDistant guifg=#66A5AD guibg=NONE guisp=NONE gui=bold,underline
highlight LightspeedLabelDistantOverlapped guifg=#66A5AD guibg=NONE guisp=NONE gui=underline
highlight LightspeedLabelOverlapped guifg=#B279A7 guibg=NONE guisp=NONE gui=underline
highlight LightspeedOneCharMatch guifg=#1C1917 guibg=#B279A7 guisp=NONE gui=bold
highlight LightspeedPendingChangeOpArea guifg=#B279A7 guibg=NONE guisp=NONE gui=NONE
highlight LightspeedShortcut guifg=#1C1917 guibg=#B279A7 guisp=NONE gui=bold,underline
highlight LineNr guifg=#5C534F guibg=NONE guisp=NONE gui=NONE
highlight MoreMsg guifg=#819B69 guibg=NONE guisp=NONE gui=bold
highlight NeogitHunkHeaderHighlight guifg=#B4BDC3 guibg=#25211F guisp=NONE gui=bold
highlight NnnNormal guifg=#B4BDC3 guibg=#231F1D guisp=NONE gui=NONE
highlight NnnVertSplit guifg=bg guibg=NONE guisp=NONE gui=NONE
highlight NonText guifg=#544C48 guibg=NONE guisp=NONE gui=NONE
highlight Normal guifg=#B4BDC3 guibg=#1C1917 guisp=NONE gui=NONE
highlight NormalFloat guifg=NONE guibg=#2C2725 guisp=NONE gui=NONE
highlight Number guifg=#B4BDC3 guibg=NONE guisp=NONE gui=italic
highlight NvimTreeCursorLine guifg=NONE guibg=#322D2B guisp=NONE gui=NONE
highlight NvimTreeNormal guifg=#B4BDC3 guibg=#231F1D guisp=NONE gui=NONE
highlight NvimTreeRootFolder guifg=#6099C0 guibg=NONE guisp=NONE gui=bold
highlight NvimTreeSpecialFile guifg=#B279A7 guibg=NONE guisp=NONE gui=underline
highlight NvimTreeSymlink guifg=#6099C0 guibg=NONE guisp=NONE gui=NONE
highlight NvimTreeVertSplit guifg=bg guibg=NONE guisp=NONE gui=NONE
highlight Pmenu guifg=NONE guibg=#352F2D guisp=NONE gui=NONE
highlight PmenuSbar guifg=NONE guibg=#736863 guisp=NONE gui=NONE
highlight PmenuSel guifg=NONE guibg=#4F4844 guisp=NONE gui=NONE
highlight PmenuThumb guifg=NONE guibg=#8E817B guisp=NONE gui=NONE
highlight Search guifg=#B4BDC3 guibg=#65435E guisp=NONE gui=NONE
highlight SneakLabelMask guifg=#B279A7 guibg=#B279A7 guisp=NONE gui=NONE
highlight Special guifg=#8D9499 guibg=NONE guisp=NONE gui=bold
highlight SpecialComment guifg=#6E6763 guibg=NONE guisp=NONE gui=bold
highlight SpecialKey guifg=#544C48 guibg=NONE guisp=NONE gui=italic
highlight SpellBad guifg=#CB7A83 guibg=NONE guisp=NONE gui=undercurl
highlight SpellCap guifg=#CB7A83 guibg=NONE guisp=NONE gui=undercurl
highlight SpellRare guifg=#CB7A83 guibg=NONE guisp=NONE gui=undercurl
highlight Statement guifg=#B4BDC3 guibg=NONE guisp=NONE gui=bold
highlight StatusLine guifg=#B4BDC3 guibg=#3E3835 guisp=NONE gui=NONE
highlight StatusLineNC guifg=#CAD0D4 guibg=#322D2B guisp=NONE gui=NONE
highlight TSConstant guifg=#979FA4 guibg=NONE guisp=NONE gui=bold
highlight TabLineSel guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight TelescopeBorder guifg=#837771 guibg=NONE guisp=NONE gui=NONE
highlight TelescopeMatching guifg=#B279A7 guibg=NONE guisp=NONE gui=bold
highlight TelescopeSelectionCaret guifg=#DE6E7C guibg=#25211F guisp=NONE gui=NONE
highlight Title guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight Todo guifg=NONE guibg=NONE guisp=NONE gui=bold,underline
highlight Type guifg=#A1938C guibg=NONE guisp=NONE gui=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline
highlight VertSplit guifg=#5C534F guibg=NONE guisp=NONE gui=NONE
highlight Visual guifg=NONE guibg=#3D4042 guisp=NONE gui=NONE
highlight WarningMsg guifg=#B77E64 guibg=NONE guisp=NONE gui=NONE
highlight WildMenu guifg=#1C1917 guibg=#B279A7 guisp=NONE gui=NONE
highlight diffAdded guifg=#819B69 guibg=NONE guisp=NONE gui=NONE
highlight diffChanged guifg=#6099C0 guibg=NONE guisp=NONE gui=NONE
highlight diffFile guifg=#B77E64 guibg=NONE guisp=NONE gui=bold
highlight diffIndexLine guifg=#B77E64 guibg=NONE guisp=NONE gui=NONE
highlight diffLine guifg=#B279A7 guibg=NONE guisp=NONE gui=bold
highlight diffNewFile guifg=#819B69 guibg=NONE guisp=NONE gui=italic
highlight diffOldFile guifg=#DE6E7C guibg=NONE guisp=NONE gui=italic
highlight diffRemoved guifg=#DE6E7C guibg=NONE guisp=NONE gui=NONE
highlight lCursor guifg=#1C1917 guibg=#797F84 guisp=NONE gui=NONE
highlight markdownH1 guifg=#B4BDC3 guibg=NONE guisp=NONE gui=bold,underline
highlight! link Boolean Number
highlight! link BufferCurrent TabLineSel
highlight! link CocCodeLens LineNr
highlight! link CocErrorHighlight DiagnosticUnderlineError
highlight! link CocErrorSign DiagnosticError
highlight! link CocErrorVirtualText DiagnosticVirtualTextError
highlight! link CocHintHighlight DiagnosticUnderlineHint
highlight! link CocHintSign DiagnosticHint
highlight! link CocInfoHighlight DiagnosticUnderlineInfo
highlight! link CocInfoSign DiagnosticInfo
highlight! link CocSelectedText SpellBad
highlight! link CocWarningHighlight DiagnosticUnderlineWarn
highlight! link CocWarningSign DiagnosticWarn
highlight! link CocWarningVitualText DiagnosticVirtualTextWarn
highlight! link CursorColumn CursorLine
highlight! link DiagnosticError Error
highlight! link DiagnosticWarn WarningMsg
highlight! link EndOfBuffer NonText
highlight! link ErrorMsg Error
highlight! link GitGutterAdd GitSignsAdd
highlight! link GitGutterChange GitSignsChange
highlight! link GitGutterDelete GitSignsDelete
highlight! link HopNextKey LightspeedLabel
highlight! link HopNextKey1 LightspeedLabelDistant
highlight! link HopUnmatched LightspeedGreyWash
highlight! link LightspeedMaskedChar Conceal
highlight! link LightspeedPendingOpArea SneakLabel
highlight! link LightspeedUnlabeledMatch Bold
highlight! link LspCodeLens LineNr
highlight! link LspReferenceRead ColorColumn
highlight! link LspReferenceText ColorColumn
highlight! link LspReferenceWrite ColorColumn
highlight! link MatchParen Search
highlight! link NeogitDiffAddHighlight DiffAdd
highlight! link NeogitDiffContextHighlight CursorLine
highlight! link NeogitDiffDeleteHighlight DiffDelete
highlight! link NeogitHunkHeader LineNr
highlight! link NeogitNotificationError DiagnosticError
highlight! link NeogitNotificationInfo DiagnosticInfo
highlight! link NeogitNotificationWarning DiagnosticWarn
highlight! link NnnNormalNC NnnNormal
highlight! link NvimTreeCursorColumn NvimTreeCursorLine
highlight! link NvimTreeGitDeleted diffRemoved
highlight! link NvimTreeGitDirty diffChanged
highlight! link NvimTreeGitNew diffAdded
highlight! link PreProc Statement
highlight! link Question MoreMsg
highlight! link SignColumn LineNr
highlight! link Sneak Search
highlight! link SneakLabel WildMenu
highlight! link SpellLocal SpellCap
highlight! link TSConstBuiltin Number
highlight! link TSConstMacro Number
highlight! link TSDanger Error
highlight! link TSNamespace Special
highlight! link TSNote DiagnosticInfo
highlight! link TSTag Special
highlight! link TSVariable Identifier
highlight! link TSVariableBuiltin Number
highlight! link TSWarning WarningMsg
highlight! link TabLine StatusLine
highlight! link TabLineFill StatusLineNC
highlight! link TelescopeSelection CursorLine
highlight! link TermCursor Cursor
highlight! link TermCursorNC lCursor
highlight! link TroubleNormal Function
highlight! link TroubleSource Constant
highlight! link TroubleText Function
highlight! link WhichKey Statement
highlight! link WhichKeyGroup Special
highlight! link WhichKeySeparator LineNr
highlight! link WhichKeyValue Constant
highlight! link Whitespace NonText
highlight! link gitcommitOverflow WarningMsg
highlight! link helpHyperTextEntry Special
highlight! link helpHyperTextJump Constant
highlight! link helpOption Constant
highlight! link helpSpecial Type
highlight! link markdownCode Identifier
highlight! link markdownH2 Statement
highlight! link markdownH3 Statement
highlight! link markdownH4 Special
highlight! link markdownH5 Special
highlight! link markdownH6 Special
highlight! link markdownLinkTextDelimiter Delimiter
highlight! link StatusLineTerm StatusLine
highlight! link StatusLineTermNC StatusLineNC
endif

if has('terminal')
    let g:terminal_ansi_colors = [
                \ g:terminal_color_0,
                \ g:terminal_color_1,
                \ g:terminal_color_2,
                \ g:terminal_color_3,
                \ g:terminal_color_4,
                \ g:terminal_color_5,
                \ g:terminal_color_6,
                \ g:terminal_color_7,
                \ g:terminal_color_8,
                \ g:terminal_color_9,
                \ g:terminal_color_10,
                \ g:terminal_color_11,
                \ g:terminal_color_12,
                \ g:terminal_color_13,
                \ g:terminal_color_14,
                \ g:terminal_color_15
                \ ]
endif
