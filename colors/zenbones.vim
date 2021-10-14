" This file is auto-generated from lua/zenbones/template/vim.lua
if exists('g:colors_name')
    highlight clear
    syntax reset
    set t_Co=256
endif

set background=light
let g:colors_name = 'zenbones'

let g:terminal_color_0 = '#F0EDEC'
let g:terminal_color_1 = '#A8334C'
let g:terminal_color_2 = '#4F6C31'
let g:terminal_color_3 = '#944927'
let g:terminal_color_4 = '#286486'
let g:terminal_color_5 = '#88507D'
let g:terminal_color_6 = '#3B8992'
let g:terminal_color_7 = '#2C363C'
let g:terminal_color_8 = '#CFC1BA'
let g:terminal_color_9 = '#94253E'
let g:terminal_color_10 = '#3F5A22'
let g:terminal_color_11 = '#803D1C'
let g:terminal_color_12 = '#1D5573'
let g:terminal_color_13 = '#7B3B70'
let g:terminal_color_14 = '#2B747C'
let g:terminal_color_15 = '#4F5E68'

if has('nvim') && (!exists('g:zenbones_compat') || g:zenbones_compat == 0)
    lua package.loaded["zenbones"] = nil
    lua require "lush"(require "zenbones", { force_clean = false })
    finish
else
highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight BufferVisible guifg=#596A76 guibg=NONE guisp=NONE gui=NONE
highlight BufferVisibleIndex guifg=#596A76 guibg=NONE guisp=NONE gui=NONE
highlight BufferVisibleSign guifg=#596A76 guibg=NONE guisp=NONE gui=NONE
highlight CocMarkdownLink guifg=#3B8992 guibg=NONE guisp=NONE gui=underline
highlight ColorColumn guifg=NONE guibg=#EFD8D3 guisp=NONE gui=NONE
highlight Comment guifg=#948985 guibg=NONE guisp=NONE gui=italic
highlight Conceal guifg=#4D5C65 guibg=NONE guisp=NONE gui=bold,italic
highlight Constant guifg=#53636D guibg=NONE guisp=NONE gui=italic
highlight Cursor guifg=#F2F0EF guibg=#2C363C guisp=NONE gui=NONE
highlight CursorLine guifg=NONE guibg=#E6E1DF guisp=NONE gui=NONE
highlight CursorLineNr guifg=#2C363C guibg=NONE guisp=NONE gui=bold
highlight Delimiter guifg=#8E817B guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticHint guifg=#88507D guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticInfo guifg=#286486 guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticUnderlineError guifg=#A8334C guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineHint guifg=#88507D guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineInfo guifg=#286486 guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineWarn guifg=#944927 guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticVirtualTextError guifg=#A8334C guibg=#E7DDDE guisp=NONE gui=NONE
highlight DiagnosticVirtualTextWarn guifg=#944927 guibg=#F0E6E4 guisp=NONE gui=NONE
highlight DiffAdd guifg=NONE guibg=#C3E0AC guisp=NONE gui=NONE
highlight DiffChange guifg=NONE guibg=#C0DAF2 guisp=NONE gui=NONE
highlight DiffDelete guifg=NONE guibg=#E7CBCE guisp=NONE gui=NONE
highlight DiffText guifg=#2C363C guibg=#99C6E9 guisp=NONE gui=NONE
highlight Directory guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight Error guifg=#A8334C guibg=NONE guisp=NONE gui=NONE
highlight FloatBorder guifg=#786D68 guibg=NONE guisp=NONE gui=NONE
highlight FoldColumn guifg=#A79891 guibg=NONE guisp=NONE gui=bold
highlight Folded guifg=#564E4A guibg=#CDC2BC guisp=NONE gui=NONE
highlight Function guifg=#2C363C guibg=NONE guisp=NONE gui=NONE
highlight GitSignsAdd guifg=#4F6C31 guibg=NONE guisp=NONE gui=NONE
highlight GitSignsChange guifg=#286486 guibg=NONE guisp=NONE gui=NONE
highlight GitSignsDelete guifg=#A8334C guibg=NONE guisp=NONE gui=NONE
highlight HopNextKey2 guifg=#286486 guibg=NONE guisp=NONE gui=NONE
highlight Identifier guifg=#44525B guibg=NONE guisp=NONE gui=NONE
highlight IncSearch guifg=#F0EDEC guibg=#88507D guisp=NONE gui=bold
highlight IndentBlanklineChar guifg=#D4CDCA guibg=NONE guisp=NONE gui=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight LightspeedGreyWash guifg=#948985 guibg=NONE guisp=NONE gui=NONE
highlight LightspeedLabel guifg=#88507D guibg=NONE guisp=NONE gui=bold,underline
highlight LightspeedLabelDistant guifg=#3B8992 guibg=NONE guisp=NONE gui=bold,underline
highlight LightspeedLabelDistantOverlapped guifg=#3B8992 guibg=NONE guisp=NONE gui=underline
highlight LightspeedLabelOverlapped guifg=#88507D guibg=NONE guisp=NONE gui=underline
highlight LightspeedOneCharMatch guifg=#F0EDEC guibg=#88507D guisp=NONE gui=bold
highlight LightspeedPendingChangeOpArea guifg=#88507D guibg=NONE guisp=NONE gui=NONE
highlight LightspeedShortcut guifg=#F0EDEC guibg=#88507D guisp=NONE gui=bold,underline
highlight LineNr guifg=#A79891 guibg=NONE guisp=NONE gui=NONE
highlight MoreMsg guifg=#4F6C31 guibg=NONE guisp=NONE gui=bold
highlight NeogitHunkHeaderHighlight guifg=#2C363C guibg=#E6E1DF guisp=NONE gui=bold
highlight NonText guifg=#C0B0A8 guibg=NONE guisp=NONE gui=NONE
highlight Normal guifg=#2C363C guibg=#F0EDEC guisp=NONE gui=NONE
highlight NormalFloat guifg=NONE guibg=#E1DCD9 guisp=NONE gui=NONE
highlight Number guifg=#2C363C guibg=NONE guisp=NONE gui=italic
highlight NvimTreeCursorLine guifg=NONE guibg=#DAD3CF guisp=NONE gui=NONE
highlight NvimTreeRootFolder guifg=#286486 guibg=NONE guisp=NONE gui=bold
highlight NvimTreeSpecialFile guifg=#88507D guibg=NONE guisp=NONE gui=underline
highlight NvimTreeSymlink guifg=#286486 guibg=NONE guisp=NONE gui=NONE
highlight NvimTreeVertSplit guifg=bg guibg=NONE guisp=NONE gui=NONE
highlight Pmenu guifg=NONE guibg=#DAD3CF guisp=NONE gui=NONE
highlight PmenuSbar guifg=NONE guibg=#B2A39B guisp=NONE gui=NONE
highlight PmenuSel guifg=NONE guibg=#C4B6AF guisp=NONE gui=NONE
highlight PmenuThumb guifg=NONE guibg=#F7F6F5 guisp=NONE gui=NONE
highlight Search guifg=#2C363C guibg=#D2A6C8 guisp=NONE gui=NONE
highlight SneakLabelMask guifg=#88507D guibg=#88507D guisp=NONE gui=NONE
highlight Special guifg=#51606B guibg=NONE guisp=NONE gui=bold
highlight SpecialComment guifg=#948985 guibg=NONE guisp=NONE gui=bold
highlight SpecialKey guifg=#C0B0A8 guibg=NONE guisp=NONE gui=italic
highlight SpellBad guifg=#974352 guibg=NONE guisp=NONE gui=undercurl
highlight SpellCap guifg=#974352 guibg=NONE guisp=NONE gui=undercurl
highlight SpellRare guifg=#974352 guibg=NONE guisp=NONE gui=undercurl
highlight Statement guifg=#2C363C guibg=NONE guisp=NONE gui=bold
highlight StatusLine guifg=#2C363C guibg=#D1C7C3 guisp=NONE gui=NONE
highlight StatusLineNC guifg=#596A76 guibg=#DAD3CF guisp=NONE gui=NONE
highlight TSConstant guifg=#44525B guibg=NONE guisp=NONE gui=bold
highlight TabLineSel guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight TelescopeMatching guifg=#88507D guibg=NONE guisp=NONE gui=bold
highlight TelescopeSelectionCaret guifg=#A8334C guibg=#E6E1DF guisp=NONE gui=NONE
highlight Title guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight Todo guifg=NONE guibg=NONE guisp=NONE gui=bold,underline
highlight Type guifg=#6A5549 guibg=NONE guisp=NONE gui=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline
highlight Visual guifg=NONE guibg=#D2DFE7 guisp=NONE gui=NONE
highlight WarningMsg guifg=#944927 guibg=NONE guisp=NONE gui=NONE
highlight WildMenu guifg=#F0EDEC guibg=#88507D guisp=NONE gui=NONE
highlight diffAdded guifg=#4F6C31 guibg=NONE guisp=NONE gui=NONE
highlight diffChanged guifg=#286486 guibg=NONE guisp=NONE gui=NONE
highlight diffFile guifg=#944927 guibg=NONE guisp=NONE gui=bold
highlight diffIndexLine guifg=#944927 guibg=NONE guisp=NONE gui=NONE
highlight diffLine guifg=#88507D guibg=NONE guisp=NONE gui=bold
highlight diffNewFile guifg=#4F6C31 guibg=NONE guisp=NONE gui=italic
highlight diffOldFile guifg=#A8334C guibg=NONE guisp=NONE gui=italic
highlight diffRemoved guifg=#A8334C guibg=NONE guisp=NONE gui=NONE
highlight lCursor guifg=#F2F0EF guibg=#4D5C65 guisp=NONE gui=NONE
highlight markdownH1 guifg=#2C363C guibg=NONE guisp=NONE gui=bold,underline
highlight! link Boolean Number
highlight! link BufferCurrent TabLineSel
highlight! link CocCodeLens LineNr
highlight! link CocErrorHighlight LspDiagnosticsUnderlineError
highlight! link CocErrorSign LspDiagnosticsDefaultError
highlight! link CocErrorVirtualText LspDiagnosticsVirtualTextError
highlight! link CocHintHighlight LspDiagnosticsUnderlineHint
highlight! link CocHintSign LspDiagnosticsDefaultHint
highlight! link CocInfoHighlight LspDiagnosticsUnderlineInformation
highlight! link CocInfoSign LspDiagnosticsDefaultInformation
highlight! link CocSelectedText SpellBad
highlight! link CocWarningHighlight LspDiagnosticsUnderlineWarning
highlight! link CocWarningSign LspDiagnosticsDefaultWarning
highlight! link CocWarningVitualText LspDiagnosticsVirtualTextWarning
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
highlight! link NeogitNotificationError LspDiagnosticsDefaultError
highlight! link NeogitNotificationInfo LspDiagnosticsDefaultInformation
highlight! link NeogitNotificationWarning LspDiagnosticsDefaultWarning
highlight! link NvimTreeCursorColumn NvimTreeCursorLine
highlight! link NvimTreeGitDeleted diffRemoved
highlight! link NvimTreeGitDirty diffChanged
highlight! link NvimTreeGitNew diffAdded
highlight! link NvimTreeNormal NormalFloat
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
highlight! link TSNote LspDiagnosticsDefaultInformation
highlight! link TSTag Special
highlight! link TSVariable Identifier
highlight! link TSVariableBuiltin Number
highlight! link TSWarning WarningMsg
highlight! link TabLine StatusLine
highlight! link TabLineFill StatusLineNC
highlight! link TelescopeBorder FloatBorder
highlight! link TelescopeSelection CursorLine
highlight! link TermCursor Cursor
highlight! link TermCursorNC lCursor
highlight! link TroubleNormal Function
highlight! link TroubleSource Constant
highlight! link TroubleText Function
highlight! link VertSplit LineNr
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
