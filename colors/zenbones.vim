if exists('g:colors_name')
    highlight clear
    syntax reset
    set t_Co=256
endif

" You probably always want to set this in your vim file
set background=light
let g:colors_name = 'zenbones'

let g:terminal_color_0 = '#2c363c'
let g:terminal_color_1 = '#a8334c'
let g:terminal_color_2 = '#617437'
let g:terminal_color_3 = '#944927'
let g:terminal_color_4 = '#286486'
let g:terminal_color_5 = '#88507d'
let g:terminal_color_6 = '#3b8992'
let g:terminal_color_7 = '#f0edec'
let g:terminal_color_8 = '#44525b'
let g:terminal_color_9 = '#9c2842'
let g:terminal_color_10 = '#55672a'
let g:terminal_color_11 = '#87411e'
let g:terminal_color_12 = '#1f5a7a'
let g:terminal_color_13 = '#864079'
let g:terminal_color_14 = '#2f7c85'
let g:terminal_color_15 = '#dcd2ce'

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

"Theme built with Lush.nvim, exported at Fri Sep  3 11:33:42 2021
highlight Cursor guifg=#F2F0EF guibg=#2C363C guisp=NONE gui=NONE
highlight Conceal guifg=#4D5C65 guibg=NONE guisp=NONE gui=bold,italic
highlight Error guifg=#A8334C guibg=NONE guisp=NONE gui=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline
highlight Normal guifg=#2C363C guibg=#F0EDEC guisp=NONE gui=NONE
highlight Comment guifg=#948985 guibg=NONE guisp=NONE gui=italic
highlight! link NeogitDiffAddHighlight DiffAdd
highlight! link ErrorMsg Error
highlight! link NeogitDiffContextHighlight CursorLine
highlight! link NeogitNotificationInfo LspDiagnosticsDefaultInformation
highlight! link NeogitNotificationWarning LspDiagnosticsDefaultWarning
highlight! link NeogitNotificationError LspDiagnosticsDefaultError
highlight NeogitHunkHeaderHighlight guifg=#2C363C guibg=#E6E1DF guisp=NONE gui=bold
highlight CocMarkdownLink guifg=#3B8992 guibg=NONE guisp=NONE gui=underline
highlight! link CocCodeLens LineNr
highlight! link CocSelectedText SpellBad
highlight! link CocWarningVitualText LspDiagnosticsVirtualTextWarning
highlight! link CocErrorVirtualText LspDiagnosticsVirtualTextError
highlight CocHintHighlight guifg=#88507D guibg=NONE guisp=NONE gui=underline
highlight CocInfoHighlight guifg=#286486 guibg=NONE guisp=NONE gui=underline
highlight CocWarningHighlight guifg=#944927 guibg=NONE guisp=NONE gui=underline
highlight CocErrorHighlight guifg=#A8334C guibg=NONE guisp=NONE gui=underline
highlight! link CocHintSign LspDiagnosticsDefaultHint
highlight! link CocInfoSign LspDiagnosticsDefaultInformation
highlight! link CocWarningSign LspDiagnosticsDefaultWarning
highlight! link CocErrorSign LspDiagnosticsDefaultError
highlight BufferVisibleIndex guifg=#596A76 guibg=NONE guisp=NONE gui=NONE
highlight BufferVisibleSign guifg=#596A76 guibg=NONE guisp=NONE gui=NONE
highlight BufferVisible guifg=#596A76 guibg=NONE guisp=NONE gui=NONE
highlight! link BufferCurrent TabLineSel
highlight SneakLabelMask guifg=#88507D guibg=#88507D guisp=NONE gui=NONE
highlight! link SneakLabel WildMenu
highlight! link Sneak Search
highlight! link TelescopeBorder FloatBorder
highlight TelescopeMatching guifg=#88507D guibg=NONE guisp=NONE gui=bold
highlight TelescopeSelectionCaret guifg=#A8334C guibg=#E6E1DF guisp=NONE gui=NONE
highlight! link TelescopeSelection CursorLine
highlight IndentBlanklineChar guifg=#D4CDCA guibg=NONE guisp=NONE gui=NONE
highlight! link GitGutterDelete GitSignsDelete
highlight! link GitGutterChange GitSignsChange
highlight! link GitGutterAdd GitSignsAdd
highlight GitSignsDelete guifg=#A8334C guibg=NONE guisp=NONE gui=NONE
highlight GitSignsChange guifg=#286486 guibg=NONE guisp=NONE gui=NONE
highlight GitSignsAdd guifg=#617437 guibg=NONE guisp=NONE gui=NONE
highlight diffIndexLine guifg=#944927 guibg=NONE guisp=NONE gui=NONE
highlight diffLine guifg=#88507D guibg=NONE guisp=NONE gui=bold
highlight diffFile guifg=#944927 guibg=NONE guisp=NONE gui=bold
highlight! link NeogitHunkHeader LineNr
highlight diffNewFile guifg=#617437 guibg=NONE guisp=NONE gui=italic
highlight diffOldFile guifg=#A8334C guibg=NONE guisp=NONE gui=italic
highlight diffChanged guifg=#286486 guibg=NONE guisp=NONE gui=NONE
highlight diffRemoved guifg=#A8334C guibg=NONE guisp=NONE gui=NONE
highlight diffAdded guifg=#617437 guibg=NONE guisp=NONE gui=NONE
highlight WarningMsg guifg=#944927 guibg=NONE guisp=NONE gui=NONE
highlight! link TSVariable Identifier
highlight! link LspCodeLens LineNr
highlight! link NeogitDiffDeleteHighlight DiffDelete
highlight LspDiagnosticsUnderlineHint guifg=#88507D guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineInformation guifg=#286486 guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineWarning guifg=#944927 guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineError guifg=#A8334C guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsVirtualTextWarning guifg=#944927 guibg=#F0E6E4 guisp=NONE gui=NONE
highlight LspDiagnosticsVirtualTextError guifg=#A8334C guibg=#E7DDDE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultHint guifg=#88507D guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultInformation guifg=#286486 guibg=NONE guisp=NONE gui=NONE
highlight! link LspDiagnosticsDefaultWarning WarningMsg
highlight! link LspDiagnosticsDefaultError Error
highlight! link LspReferenceWrite ColorColumn
highlight! link LspReferenceRead ColorColumn
highlight! link LspReferenceText ColorColumn
highlight TSTag guifg=#4D5C65 guibg=NONE guisp=NONE gui=bold
highlight Todo guifg=NONE guibg=NONE guisp=NONE gui=bold,underline
highlight SpecialComment guifg=#948985 guibg=NONE guisp=NONE gui=bold
highlight Delimiter guifg=#8E817B guibg=NONE guisp=NONE gui=NONE
highlight Special guifg=#4D5C65 guibg=NONE guisp=NONE gui=bold
highlight Type guifg=#5C534F guibg=NONE guisp=NONE gui=NONE
highlight! link PreProc Statement
highlight Statement guifg=#2C363C guibg=NONE guisp=NONE gui=bold
highlight Function guifg=#2C363C guibg=NONE guisp=NONE gui=NONE
highlight Identifier guifg=#44525B guibg=NONE guisp=NONE gui=NONE
highlight Constant guifg=#53636D guibg=NONE guisp=NONE gui=italic
highlight Title guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight! link Question MoreMsg
highlight Directory guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight WildMenu guifg=#F0EDEC guibg=#88507D guisp=NONE gui=NONE
highlight! link EndOfBuffer NonText
highlight! link Whitespace NonText
highlight SpecialKey guifg=#C0B0A8 guibg=NONE guisp=NONE gui=italic
highlight NonText guifg=#C0B0A8 guibg=NONE guisp=NONE gui=NONE
highlight Visual guifg=NONE guibg=#D2DFE7 guisp=NONE gui=NONE
highlight VertSplit guifg=#F7F6F5 guibg=NONE guisp=NONE gui=NONE
highlight TabLineSel guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight! link TabLineFill StatusLineNC
highlight TabLine guifg=#2C363C guibg=#D1C7C3 guisp=NONE gui=italic
highlight StatusLineNC guifg=#596A76 guibg=#DAD3CF guisp=NONE gui=NONE
highlight StatusLine guifg=#2C363C guibg=#D1C7C3 guisp=NONE gui=NONE
highlight SpellRare guifg=#974352 guibg=NONE guisp=NONE gui=undercurl
highlight! link SpellLocal SpellCap
highlight SpellCap guifg=#974352 guibg=NONE guisp=NONE gui=undercurl
highlight SpellBad guifg=#974352 guibg=NONE guisp=NONE gui=undercurl
highlight! link MatchParen Search
highlight IncSearch guifg=#F0EDEC guibg=#88507D guisp=NONE gui=bold
highlight Search guifg=#2C363C guibg=#D2A6C8 guisp=NONE gui=NONE
highlight PmenuThumb guifg=NONE guibg=#F7F6F5 guisp=NONE gui=NONE
highlight PmenuSbar guifg=NONE guibg=#B2A39B guisp=NONE gui=NONE
highlight PmenuSel guifg=NONE guibg=#C4B6AF guisp=NONE gui=NONE
highlight Pmenu guifg=NONE guibg=#DAD3CF guisp=NONE gui=NONE
highlight FloatBorder guifg=#786D68 guibg=NONE guisp=NONE gui=NONE
highlight NormalFloat guifg=NONE guibg=#E1DCD9 guisp=NONE gui=NONE
highlight MoreMsg guifg=#617437 guibg=NONE guisp=NONE gui=bold
highlight CursorLineNr guifg=#2C363C guibg=NONE guisp=NONE gui=bold
highlight Folded guifg=#564E4A guibg=#CDC2BC guisp=NONE gui=NONE
highlight FoldColumn guifg=#9C8E87 guibg=NONE guisp=NONE gui=bold
highlight! link SignColumn LineNr
highlight LineNr guifg=#9C8E87 guibg=NONE guisp=NONE gui=NONE
highlight DiffText guifg=#2C363C guibg=#99C6E9 guisp=NONE gui=NONE
highlight DiffDelete guifg=NONE guibg=#E9CACE guisp=NONE gui=NONE
highlight DiffChange guifg=NONE guibg=#C0DAF2 guisp=NONE gui=NONE
highlight DiffAdd guifg=NONE guibg=#DDE6CD guisp=NONE gui=NONE
highlight ColorColumn guifg=NONE guibg=#EFD8D3 guisp=NONE gui=NONE
highlight! link CursorColumn CursorLine
highlight CursorLine guifg=NONE guibg=#E6E1DF guisp=NONE gui=NONE
highlight! link TermCursorNC lCursor
highlight! link TermCursor Cursor
highlight lCursor guifg=#F2F0EF guibg=#4D5C65 guisp=NONE gui=NONE
