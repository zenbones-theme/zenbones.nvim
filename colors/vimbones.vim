" This file is auto-generated from lua/zenbones/template/vim.lua
if exists('g:colors_name')
    highlight clear
endif

set background=light
let g:colors_name = 'vimbones'

let g:terminal_color_0 = '#F0F0CA'
let g:terminal_color_1 = '#A8334C'
let g:terminal_color_2 = '#4F6C31'
let g:terminal_color_3 = '#944927'
let g:terminal_color_4 = '#286486'
let g:terminal_color_5 = '#88507D'
let g:terminal_color_6 = '#3B8992'
let g:terminal_color_7 = '#353535'
let g:terminal_color_8 = '#C6C6A3'
let g:terminal_color_9 = '#94253E'
let g:terminal_color_10 = '#3F5A22'
let g:terminal_color_11 = '#803D1C'
let g:terminal_color_12 = '#1D5573'
let g:terminal_color_13 = '#7B3B70'
let g:terminal_color_14 = '#2B747C'
let g:terminal_color_15 = '#5C5C5C'

if has('nvim') && (!exists('g:zenbones_compat') || g:zenbones_compat == 0)
    lua package.loaded["vimbones"] = nil
    lua require "lush"(require "vimbones", { force_clean = false })
    finish
else
highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight BufferVisible guifg=#686868 guibg=NONE guisp=NONE gui=NONE
highlight BufferVisibleIndex guifg=#686868 guibg=NONE guisp=NONE gui=NONE
highlight BufferVisibleSign guifg=#686868 guibg=NONE guisp=NONE gui=NONE
highlight CmpItemAbbr guifg=#505050 guibg=NONE guisp=NONE gui=NONE
highlight CmpItemAbbrDeprecated guifg=#848484 guibg=NONE guisp=NONE gui=NONE
highlight CmpItemAbbrMatch guifg=#353535 guibg=NONE guisp=NONE gui=bold
highlight CmpItemAbbrMatchFuzzy guifg=#494949 guibg=NONE guisp=NONE gui=bold
highlight CmpItemKind guifg=#636363 guibg=NONE guisp=NONE gui=NONE
highlight CmpItemMenu guifg=#6D6D6D guibg=NONE guisp=NONE gui=NONE
highlight CocMarkdownLink guifg=#3B8992 guibg=NONE guisp=NONE gui=underline
highlight ColorColumn guifg=NONE guibg=#E6C5BD guisp=NONE gui=NONE
highlight Comment guifg=#8C8C7C guibg=NONE guisp=NONE gui=italic
highlight Conceal guifg=#5C5C5C guibg=NONE guisp=NONE gui=bold,italic
highlight Constant guifg=#636363 guibg=NONE guisp=NONE gui=italic
highlight Cursor guifg=#F0F0CA guibg=#353535 guisp=NONE gui=NONE
highlight CursorLine guifg=NONE guibg=#E7E8C3 guisp=NONE gui=NONE
highlight CursorLineNr guifg=#353535 guibg=NONE guisp=NONE gui=bold
highlight Delimiter guifg=#85856F guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticHint guifg=#88507D guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticInfo guifg=#286486 guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticSignError guifg=#A8334C guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticSignHint guifg=#88507D guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticSignInfo guifg=#286486 guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticSignWarn guifg=#944927 guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticUnderlineError guifg=#A8334C guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineHint guifg=#88507D guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineInfo guifg=#286486 guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineWarn guifg=#944927 guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticVirtualTextError guifg=#A8334C guibg=#F2DEE0 guisp=NONE gui=NONE
highlight DiagnosticVirtualTextWarn guifg=#944927 guibg=#F2DEDA guisp=NONE gui=NONE
highlight DiffAdd guifg=NONE guibg=#CBE5B8 guisp=NONE gui=NONE
highlight DiffChange guifg=NONE guibg=#D4DEE7 guisp=NONE gui=NONE
highlight DiffDelete guifg=NONE guibg=#EBD8DA guisp=NONE gui=NONE
highlight DiffText guifg=#353535 guibg=#A9BED1 guisp=NONE gui=NONE
highlight Directory guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight Error guifg=#A8334C guibg=NONE guisp=NONE gui=NONE
highlight FloatBorder guifg=#71715E guibg=NONE guisp=NONE gui=NONE
highlight FoldColumn guifg=#9A9A81 guibg=NONE guisp=NONE gui=bold
highlight Folded guifg=#515143 guibg=#C6C6A6 guisp=NONE gui=NONE
highlight Function guifg=#353535 guibg=NONE guisp=NONE gui=NONE
highlight GitSignsAdd guifg=#4F6C31 guibg=NONE guisp=NONE gui=NONE
highlight GitSignsChange guifg=#286486 guibg=NONE guisp=NONE gui=NONE
highlight GitSignsDelete guifg=#A8334C guibg=NONE guisp=NONE gui=NONE
highlight HopNextKey2 guifg=#286486 guibg=NONE guisp=NONE gui=NONE
highlight Identifier guifg=#505050 guibg=NONE guisp=NONE gui=NONE
highlight IncSearch guifg=#F0F0CA guibg=#C074B2 guisp=NONE gui=bold
highlight IndentBlanklineChar guifg=#D0D0B6 guibg=NONE guisp=NONE gui=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight LightspeedGreyWash guifg=#8C8C7C guibg=NONE guisp=NONE gui=NONE
highlight LightspeedLabel guifg=#88507D guibg=NONE guisp=NONE gui=bold,underline
highlight LightspeedLabelDistant guifg=#3B8992 guibg=NONE guisp=NONE gui=bold,underline
highlight LightspeedLabelDistantOverlapped guifg=#3B8992 guibg=NONE guisp=NONE gui=underline
highlight LightspeedLabelOverlapped guifg=#88507D guibg=NONE guisp=NONE gui=underline
highlight LightspeedOneCharMatch guifg=#F0F0CA guibg=#88507D guisp=NONE gui=bold
highlight LightspeedPendingChangeOpArea guifg=#88507D guibg=NONE guisp=NONE gui=NONE
highlight LightspeedShortcut guifg=#F0F0CA guibg=#88507D guisp=NONE gui=bold,underline
highlight LineNr guifg=#9A9A81 guibg=NONE guisp=NONE gui=NONE
highlight MoreMsg guifg=#4F6C31 guibg=NONE guisp=NONE gui=bold
highlight NeogitHunkHeaderHighlight guifg=#353535 guibg=#E7E8C3 guisp=NONE gui=bold
highlight NnnNormal guifg=#353535 guibg=#E7E8C3 guisp=NONE gui=NONE
highlight NnnVertSplit guifg=bg guibg=NONE guisp=NONE gui=NONE
highlight NonText guifg=#B0B093 guibg=NONE guisp=NONE gui=NONE
highlight Normal guifg=#353535 guibg=#F0F0CA guisp=NONE gui=NONE
highlight NormalFloat guifg=NONE guibg=#DFDFBC guisp=NONE gui=NONE
highlight Number guifg=#2A6535 guibg=NONE guisp=NONE gui=italic
highlight NvimTreeCursorLine guifg=NONE guibg=#D6D6B5 guisp=NONE gui=NONE
highlight NvimTreeNormal guifg=#353535 guibg=#E7E8C3 guisp=NONE gui=NONE
highlight NvimTreeRootFolder guifg=#286486 guibg=NONE guisp=NONE gui=bold
highlight NvimTreeSpecialFile guifg=#88507D guibg=NONE guisp=NONE gui=underline
highlight NvimTreeSymlink guifg=#286486 guibg=NONE guisp=NONE gui=NONE
highlight NvimTreeVertSplit guifg=bg guibg=NONE guisp=NONE gui=NONE
highlight Pmenu guifg=NONE guibg=#D6D6B5 guisp=NONE gui=NONE
highlight PmenuSbar guifg=NONE guibg=#A7A78D guisp=NONE gui=NONE
highlight PmenuSel guifg=NONE guibg=#BABB9D guisp=NONE gui=NONE
highlight PmenuThumb guifg=NONE guibg=#F9F9D2 guisp=NONE gui=NONE
highlight PreProc guifg=#35663D guibg=NONE guisp=NONE gui=NONE
highlight Search guifg=#353535 guibg=#DEB9D6 guisp=NONE gui=NONE
highlight SneakLabelMask guifg=#88507D guibg=#88507D guisp=NONE gui=NONE
highlight Special guifg=#5C5C5C guibg=NONE guisp=NONE gui=bold
highlight SpecialComment guifg=#8C8C7C guibg=NONE guisp=NONE gui=bold
highlight SpecialKey guifg=#B0B093 guibg=NONE guisp=NONE gui=italic
highlight SpellBad guifg=#974352 guibg=NONE guisp=NONE gui=undercurl
highlight SpellCap guifg=#974352 guibg=NONE guisp=NONE gui=undercurl
highlight SpellRare guifg=#974352 guibg=NONE guisp=NONE gui=undercurl
highlight Statement guifg=#156A29 guibg=NONE guisp=NONE gui=bold
highlight StatusLine guifg=#353535 guibg=#CBCBAB guisp=NONE gui=NONE
highlight StatusLineNC guifg=#686868 guibg=#D6D6B5 guisp=NONE gui=NONE
highlight TSConstant guifg=#505050 guibg=NONE guisp=NONE gui=bold
highlight TabLineSel guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight TelescopeBorder guifg=#71715E guibg=NONE guisp=NONE gui=NONE
highlight TelescopeMatching guifg=#88507D guibg=NONE guisp=NONE gui=bold
highlight TelescopeSelectionCaret guifg=#A8334C guibg=#E7E8C3 guisp=NONE gui=NONE
highlight Title guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight Todo guifg=NONE guibg=NONE guisp=NONE gui=bold,underline
highlight Type guifg=#5B5B42 guibg=NONE guisp=NONE gui=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline
highlight VertSplit guifg=#9A9A81 guibg=NONE guisp=NONE gui=NONE
highlight Visual guifg=NONE guibg=#D7D7D7 guisp=NONE gui=NONE
highlight WarningMsg guifg=#944927 guibg=NONE guisp=NONE gui=NONE
highlight WildMenu guifg=#F0F0CA guibg=#88507D guisp=NONE gui=NONE
highlight diffAdded guifg=#4F6C31 guibg=NONE guisp=NONE gui=NONE
highlight diffChanged guifg=#286486 guibg=NONE guisp=NONE gui=NONE
highlight diffFile guifg=#944927 guibg=NONE guisp=NONE gui=bold
highlight diffIndexLine guifg=#944927 guibg=NONE guisp=NONE gui=NONE
highlight diffLine guifg=#88507D guibg=NONE guisp=NONE gui=bold
highlight diffNewFile guifg=#4F6C31 guibg=NONE guisp=NONE gui=italic
highlight diffOldFile guifg=#A8334C guibg=NONE guisp=NONE gui=italic
highlight diffRemoved guifg=#A8334C guibg=NONE guisp=NONE gui=NONE
highlight lCursor guifg=#F0F0CA guibg=#595959 guisp=NONE gui=NONE
highlight markdownH1 guifg=#353535 guibg=NONE guisp=NONE gui=bold,underline
highlight! link Boolean Number
highlight! link BufferCurrent TabLineSel
highlight! link CocCodeLens LineNr
highlight! link CocErrorHighlight DiagnosticUnderlineError
highlight! link CocErrorSign DiagnosticSignError
highlight! link CocErrorVirtualText DiagnosticVirtualTextError
highlight! link CocHintHighlight DiagnosticUnderlineHint
highlight! link CocHintSign DiagnosticSignHint
highlight! link CocInfoHighlight DiagnosticUnderlineInfo
highlight! link CocInfoSign DiagnosticSignInfo
highlight! link CocSelectedText SpellBad
highlight! link CocWarningHighlight DiagnosticUnderlineWarn
highlight! link CocWarningSign DiagnosticSignWarn
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
highlight! link LspDiagnosticsDefaultError DiagnosticError
highlight! link LspDiagnosticsDefaultHint DiagnosticHint
highlight! link LspDiagnosticsDefaultInformation DiagnosticInfo
highlight! link LspDiagnosticsDefaultWarning DiagnosticWarn
highlight! link LspDiagnosticsSignError DiagnosticSignError
highlight! link LspDiagnosticsSignHint DiagnosticSignHint
highlight! link LspDiagnosticsSignInformation DiagnosticSignInfo
highlight! link LspDiagnosticsSignWarning DiagnosticSignWarn
highlight! link LspDiagnosticsUnderlineError DiagnosticUnderlineError
highlight! link LspDiagnosticsUnderlineHint DiagnosticUnderlineHint
highlight! link LspDiagnosticsUnderlineInformation DiagnosticUnderlineInfo
highlight! link LspDiagnosticsUnderlineWarning DiagnosticUnderlineWarn
highlight! link LspDiagnosticsVirtualTextError DiagnosticVirtualTextError
highlight! link LspDiagnosticsVirtualTextWarning DiagnosticVirtualTextWarn
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
