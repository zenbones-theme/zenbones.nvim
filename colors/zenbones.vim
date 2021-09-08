if exists('g:colors_name')
    highlight clear
    syntax reset
    set t_Co=256
endif

set background=light
let g:colors_name = 'zenbones'

let g:terminal_color_0 = '#2C363C'
let g:terminal_color_1 = '#A8334C'
let g:terminal_color_2 = '#617437'
let g:terminal_color_3 = '#944927'
let g:terminal_color_4 = '#286486'
let g:terminal_color_5 = '#88507D'
let g:terminal_color_6 = '#3B8992'
let g:terminal_color_7 = '#F0EDEC'
let g:terminal_color_8 = '#44525B'
let g:terminal_color_9 = '#9C2842'
let g:terminal_color_10 = '#55672A'
let g:terminal_color_11 = '#87411E'
let g:terminal_color_12 = '#1F5A7A'
let g:terminal_color_13 = '#864079'
let g:terminal_color_14 = '#2F7C85'
let g:terminal_color_15 = '#DCD2CE'

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

highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight BufferVisible guifg=#596A76 guibg=NONE guisp=NONE gui=NONE
highlight BufferVisibleIndex guifg=#596A76 guibg=NONE guisp=NONE gui=NONE
highlight BufferVisibleSign guifg=#596A76 guibg=NONE guisp=NONE gui=NONE
highlight CocErrorHighlight guifg=#A8334C guibg=NONE guisp=NONE gui=underline
highlight CocHintHighlight guifg=#88507D guibg=NONE guisp=NONE gui=underline
highlight CocInfoHighlight guifg=#286486 guibg=NONE guisp=NONE gui=underline
highlight CocMarkdownLink guifg=#3B8992 guibg=NONE guisp=NONE gui=underline
highlight CocWarningHighlight guifg=#944927 guibg=NONE guisp=NONE gui=underline
highlight ColorColumn guifg=NONE guibg=#EFD8D3 guisp=NONE gui=NONE
highlight Comment guifg=#948985 guibg=NONE guisp=NONE gui=italic
highlight Conceal guifg=#4D5C65 guibg=NONE guisp=NONE gui=bold,italic
highlight Constant guifg=#53636D guibg=NONE guisp=NONE gui=italic
highlight Cursor guifg=#F2F0EF guibg=#2C363C guisp=NONE gui=NONE
highlight CursorLine guifg=NONE guibg=#E6E1DF guisp=NONE gui=NONE
highlight CursorLineNr guifg=#2C363C guibg=NONE guisp=NONE gui=bold
highlight Delimiter guifg=#8E817B guibg=NONE guisp=NONE gui=NONE
highlight DiffAdd guifg=NONE guibg=#DDE6CD guisp=NONE gui=NONE
highlight DiffChange guifg=NONE guibg=#C0DAF2 guisp=NONE gui=NONE
highlight DiffDelete guifg=NONE guibg=#E9CACE guisp=NONE gui=NONE
highlight DiffText guifg=#2C363C guibg=#99C6E9 guisp=NONE gui=NONE
highlight Directory guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight Error guifg=#A8334C guibg=NONE guisp=NONE gui=NONE
highlight FloatBorder guifg=#786D68 guibg=NONE guisp=NONE gui=NONE
highlight FoldColumn guifg=#9C8E87 guibg=NONE guisp=NONE gui=bold
highlight Folded guifg=#564E4A guibg=#CDC2BC guisp=NONE gui=NONE
highlight Function guifg=#2C363C guibg=NONE guisp=NONE gui=NONE
highlight GitSignsAdd guifg=#617437 guibg=NONE guisp=NONE gui=NONE
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
highlight LineNr guifg=#9C8E87 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultHint guifg=#88507D guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultInformation guifg=#286486 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsUnderlineError guifg=#A8334C guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineHint guifg=#88507D guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineInformation guifg=#286486 guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineWarning guifg=#944927 guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsVirtualTextError guifg=#A8334C guibg=#E7DDDE guisp=NONE gui=NONE
highlight LspDiagnosticsVirtualTextWarning guifg=#944927 guibg=#F0E6E4 guisp=NONE gui=NONE
highlight MoreMsg guifg=#617437 guibg=NONE guisp=NONE gui=bold
highlight NeogitHunkHeaderHighlight guifg=#2C363C guibg=#E6E1DF guisp=NONE gui=bold
highlight NonText guifg=#C0B0A8 guibg=NONE guisp=NONE gui=NONE
highlight Normal guifg=#2C363C guibg=#F0EDEC guisp=NONE gui=NONE
highlight NormalFloat guifg=NONE guibg=#E1DCD9 guisp=NONE gui=NONE
highlight Pmenu guifg=NONE guibg=#DAD3CF guisp=NONE gui=NONE
highlight PmenuSbar guifg=NONE guibg=#B2A39B guisp=NONE gui=NONE
highlight PmenuSel guifg=NONE guibg=#C4B6AF guisp=NONE gui=NONE
highlight PmenuThumb guifg=NONE guibg=#F7F6F5 guisp=NONE gui=NONE
highlight Search guifg=#2C363C guibg=#D2A6C8 guisp=NONE gui=NONE
highlight SneakLabelMask guifg=#88507D guibg=#88507D guisp=NONE gui=NONE
highlight Special guifg=#4D5C65 guibg=NONE guisp=NONE gui=bold
highlight SpecialComment guifg=#948985 guibg=NONE guisp=NONE gui=bold
highlight SpecialKey guifg=#C0B0A8 guibg=NONE guisp=NONE gui=italic
highlight SpellBad guifg=#974352 guibg=NONE guisp=NONE gui=undercurl
highlight SpellCap guifg=#974352 guibg=NONE guisp=NONE gui=undercurl
highlight SpellRare guifg=#974352 guibg=NONE guisp=NONE gui=undercurl
highlight Statement guifg=#2C363C guibg=NONE guisp=NONE gui=bold
highlight StatusLine guifg=#2C363C guibg=#D1C7C3 guisp=NONE gui=NONE
highlight StatusLineNC guifg=#596A76 guibg=#DAD3CF guisp=NONE gui=NONE
highlight TSTag guifg=#4D5C65 guibg=NONE guisp=NONE gui=bold
highlight TabLine guifg=#2C363C guibg=#D1C7C3 guisp=NONE gui=italic
highlight TabLineSel guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight TelescopeMatching guifg=#88507D guibg=NONE guisp=NONE gui=bold
highlight TelescopeSelectionCaret guifg=#A8334C guibg=#E6E1DF guisp=NONE gui=NONE
highlight Title guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight Todo guifg=NONE guibg=NONE guisp=NONE gui=bold,underline
highlight Type guifg=#5C534F guibg=NONE guisp=NONE gui=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline
highlight VertSplit guifg=#F7F6F5 guibg=NONE guisp=NONE gui=NONE
highlight Visual guifg=NONE guibg=#D2DFE7 guisp=NONE gui=NONE
highlight WarningMsg guifg=#944927 guibg=NONE guisp=NONE gui=NONE
highlight WildMenu guifg=#F0EDEC guibg=#88507D guisp=NONE gui=NONE
highlight diffAdded guifg=#617437 guibg=NONE guisp=NONE gui=NONE
highlight diffChanged guifg=#286486 guibg=NONE guisp=NONE gui=NONE
highlight diffFile guifg=#944927 guibg=NONE guisp=NONE gui=bold
highlight diffIndexLine guifg=#944927 guibg=NONE guisp=NONE gui=NONE
highlight diffLine guifg=#88507D guibg=NONE guisp=NONE gui=bold
highlight diffNewFile guifg=#617437 guibg=NONE guisp=NONE gui=italic
highlight diffOldFile guifg=#A8334C guibg=NONE guisp=NONE gui=italic
highlight diffRemoved guifg=#A8334C guibg=NONE guisp=NONE gui=NONE
highlight lCursor guifg=#F2F0EF guibg=#4D5C65 guisp=NONE gui=NONE
highlight markdownH1 guifg=#2C363C guibg=NONE guisp=NONE gui=bold,underline
highlight! link BufferCurrent TabLineSel
highlight! link CocCodeLens LineNr
highlight! link CocErrorSign LspDiagnosticsDefaultError
highlight! link CocErrorVirtualText LspDiagnosticsVirtualTextError
highlight! link CocHintSign LspDiagnosticsDefaultHint
highlight! link CocInfoSign LspDiagnosticsDefaultInformation
highlight! link CocSelectedText SpellBad
highlight! link CocWarningSign LspDiagnosticsDefaultWarning
highlight! link CocWarningVitualText LspDiagnosticsVirtualTextWarning
highlight! link CursorColumn CursorLine
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
highlight! link LspDiagnosticsDefaultError Error
highlight! link LspDiagnosticsDefaultWarning WarningMsg
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
highlight! link PreProc Statement
highlight! link Question MoreMsg
highlight! link SignColumn LineNr
highlight! link Sneak Search
highlight! link SneakLabel WildMenu
highlight! link SpellLocal SpellCap
highlight! link TSVariable Identifier
highlight! link TabLineFill StatusLineNC
highlight! link TelescopeBorder FloatBorder
highlight! link TelescopeSelection CursorLine
highlight! link TermCursor Cursor
highlight! link TermCursorNC lCursor
highlight! link WhichKey Statement
highlight! link WhichKeyGroup Special
highlight! link WhichKeySeparator LineNr
highlight! link WhichKeyValue Constant
highlight! link Whitespace NonText
highlight! link markdownCode Identifier
highlight! link markdownH2 Statement
highlight! link markdownH3 Statement
highlight! link markdownH4 Special
highlight! link markdownH5 Special
highlight! link markdownH6 Special
highlight! link markdownLinkTextDelimiter Delimiter
