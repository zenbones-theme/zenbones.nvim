if exists('g:colors_name')
    highlight clear
    syntax reset
    set t_Co=256
endif

set background=dark
let g:colors_name = 'zenflesh'

let g:terminal_color_0 = '#B6BCC1'
let g:terminal_color_1 = '#BB6572'
let g:terminal_color_2 = '#75884C'
let g:terminal_color_3 = '#B86E54'
let g:terminal_color_4 = '#4185AE'
let g:terminal_color_5 = '#AC75A1'
let g:terminal_color_6 = '#4F969E'
let g:terminal_color_7 = '#1A1715'
let g:terminal_color_8 = '#969CA0'
let g:terminal_color_9 = '#D16D7D'
let g:terminal_color_10 = '#7F974C'
let g:terminal_color_11 = '#D07654'
let g:terminal_color_12 = '#4293C2'
let g:terminal_color_13 = '#C873B8'
let g:terminal_color_14 = '#4CA2AC'
let g:terminal_color_15 = '#2F2925'

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
highlight BufferVisible guifg=#CBCFD3 guibg=NONE guisp=NONE gui=NONE
highlight BufferVisibleIndex guifg=#CBCFD3 guibg=NONE guisp=NONE gui=NONE
highlight BufferVisibleSign guifg=#CBCFD3 guibg=NONE guisp=NONE gui=NONE
highlight CocErrorHighlight guifg=#BB6572 guibg=NONE guisp=NONE gui=underline
highlight CocHintHighlight guifg=#AC75A1 guibg=NONE guisp=NONE gui=underline
highlight CocInfoHighlight guifg=#4185AE guibg=NONE guisp=NONE gui=underline
highlight CocMarkdownLink guifg=#4F969E guibg=NONE guisp=NONE gui=underline
highlight CocWarningHighlight guifg=#B86E54 guibg=NONE guisp=NONE gui=underline
highlight ColorColumn guifg=NONE guibg=#775349 guisp=NONE gui=NONE
highlight Comment guifg=#5B5654 guibg=NONE guisp=NONE gui=italic
highlight Conceal guifg=#8E9498 guibg=NONE guisp=NONE gui=bold,italic
highlight Constant guifg=#7F8488 guibg=NONE guisp=NONE gui=italic
highlight Cursor guifg=#161311 guibg=#C5CACE guisp=NONE gui=NONE
highlight CursorLine guifg=NONE guibg=#231F1D guisp=NONE gui=NONE
highlight CursorLineNr guifg=#B6BCC1 guibg=NONE guisp=NONE gui=bold
highlight Delimiter guifg=#776E69 guibg=NONE guisp=NONE gui=NONE
highlight DiffAdd guifg=NONE guibg=#384126 guisp=NONE gui=NONE
highlight DiffChange guifg=NONE guibg=#2C475B guisp=NONE gui=NONE
highlight DiffDelete guifg=NONE guibg=#5D383D guisp=NONE gui=NONE
highlight DiffText guifg=#B6BCC1 guibg=#3B5D75 guisp=NONE gui=NONE
highlight Directory guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight Error guifg=#BB6572 guibg=NONE guisp=NONE gui=NONE
highlight FloatBorder guifg=#8B7F79 guibg=NONE guisp=NONE gui=NONE
highlight FoldColumn guifg=#564E4A guibg=NONE guisp=NONE gui=bold
highlight Folded guifg=#AFA099 guibg=#37312F guisp=NONE gui=NONE
highlight Function guifg=#B6BCC1 guibg=NONE guisp=NONE gui=NONE
highlight GitSignsAdd guifg=#75884C guibg=NONE guisp=NONE gui=NONE
highlight GitSignsChange guifg=#4185AE guibg=NONE guisp=NONE gui=NONE
highlight GitSignsDelete guifg=#BB6572 guibg=NONE guisp=NONE gui=NONE
highlight HopNextKey2 guifg=#4185AE guibg=NONE guisp=NONE gui=NONE
highlight Identifier guifg=#969CA0 guibg=NONE guisp=NONE gui=NONE
highlight IncSearch guifg=#1A1715 guibg=#AC75A1 guisp=NONE gui=bold
highlight IndentBlanklineChar guifg=#181514 guibg=NONE guisp=NONE gui=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight LightspeedGreyWash guifg=#5B5654 guibg=NONE guisp=NONE gui=NONE
highlight LightspeedLabel guifg=#AC75A1 guibg=NONE guisp=NONE gui=bold,underline
highlight LightspeedLabelDistant guifg=#4F969E guibg=NONE guisp=NONE gui=bold,underline
highlight LightspeedLabelDistantOverlapped guifg=#4F969E guibg=NONE guisp=NONE gui=underline
highlight LightspeedLabelOverlapped guifg=#AC75A1 guibg=NONE guisp=NONE gui=underline
highlight LightspeedOneCharMatch guifg=#1A1715 guibg=#AC75A1 guisp=NONE gui=bold
highlight LightspeedPendingChangeOpArea guifg=#AC75A1 guibg=NONE guisp=NONE gui=NONE
highlight LightspeedShortcut guifg=#1A1715 guibg=#AC75A1 guisp=NONE gui=bold,underline
highlight LineNr guifg=#564E4A guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultHint guifg=#AC75A1 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultInformation guifg=#4185AE guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsUnderlineError guifg=#BB6572 guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineHint guifg=#AC75A1 guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineInformation guifg=#4185AE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineWarning guifg=#B86E54 guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsVirtualTextError guifg=#BB6572 guibg=#2A2A2A guisp=NONE gui=NONE
highlight LspDiagnosticsVirtualTextWarning guifg=#B86E54 guibg=#352723 guisp=NONE gui=NONE
highlight MoreMsg guifg=#75884C guibg=NONE guisp=NONE gui=bold
highlight NeogitHunkHeaderHighlight guifg=#B6BCC1 guibg=#231F1D guisp=NONE gui=bold
highlight NonText guifg=#48413D guibg=NONE guisp=NONE gui=NONE
highlight Normal guifg=#B6BCC1 guibg=#1A1715 guisp=NONE gui=NONE
highlight NormalFloat guifg=NONE guibg=#272321 guisp=NONE gui=NONE
highlight Number guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight Pmenu guifg=NONE guibg=#2E2927 guisp=NONE gui=NONE
highlight PmenuSbar guifg=NONE guibg=#4D4542 guisp=NONE gui=NONE
highlight PmenuSel guifg=NONE guibg=#3C3633 guisp=NONE gui=NONE
highlight PmenuThumb guifg=NONE guibg=#867A74 guisp=NONE gui=NONE
highlight Search guifg=#1A1715 guibg=#775370 guisp=NONE gui=NONE
highlight SneakLabelMask guifg=#AC75A1 guibg=#AC75A1 guisp=NONE gui=NONE
highlight Special guifg=#91979B guibg=NONE guisp=NONE gui=bold
highlight SpecialComment guifg=#5B5654 guibg=NONE guisp=NONE gui=bold
highlight SpecialKey guifg=#48413D guibg=NONE guisp=NONE gui=italic
highlight SpellBad guifg=#AD6D76 guibg=NONE guisp=NONE gui=undercurl
highlight SpellCap guifg=#AD6D76 guibg=NONE guisp=NONE gui=undercurl
highlight SpellRare guifg=#AD6D76 guibg=NONE guisp=NONE gui=undercurl
highlight Statement guifg=#B6BCC1 guibg=NONE guisp=NONE gui=bold
highlight StatusLine guifg=#B6BCC1 guibg=#37312F guisp=NONE gui=NONE
highlight StatusLineNC guifg=#CBCFD3 guibg=#2E2927 guisp=NONE gui=NONE
highlight TabLine guifg=#B6BCC1 guibg=#37312F guisp=NONE gui=italic
highlight TabLineSel guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight TelescopeMatching guifg=#AC75A1 guibg=NONE guisp=NONE gui=bold
highlight TelescopeSelectionCaret guifg=#BB6572 guibg=#231F1D guisp=NONE gui=NONE
highlight Title guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight Todo guifg=NONE guibg=NONE guisp=NONE gui=bold,underline
highlight Type guifg=#9B918D guibg=NONE guisp=NONE gui=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline
highlight Visual guifg=NONE guibg=#303B41 guisp=NONE gui=NONE
highlight WarningMsg guifg=#B86E54 guibg=NONE guisp=NONE gui=NONE
highlight WildMenu guifg=#1A1715 guibg=#AC75A1 guisp=NONE gui=NONE
highlight diffAdded guifg=#75884C guibg=NONE guisp=NONE gui=NONE
highlight diffChanged guifg=#4185AE guibg=NONE guisp=NONE gui=NONE
highlight diffFile guifg=#B86E54 guibg=NONE guisp=NONE gui=bold
highlight diffIndexLine guifg=#B86E54 guibg=NONE guisp=NONE gui=NONE
highlight diffLine guifg=#AC75A1 guibg=NONE guisp=NONE gui=bold
highlight diffNewFile guifg=#75884C guibg=NONE guisp=NONE gui=italic
highlight diffOldFile guifg=#BB6572 guibg=NONE guisp=NONE gui=italic
highlight diffRemoved guifg=#BB6572 guibg=NONE guisp=NONE gui=NONE
highlight lCursor guifg=#161311 guibg=#7A7F83 guisp=NONE gui=NONE
highlight markdownH1 guifg=#B6BCC1 guibg=NONE guisp=NONE gui=bold,underline
highlight! link Boolean Number
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
highlight! link TSDanger Error
highlight! link TSNote LspDiagnosticsDefaultInformation
highlight! link TSTag Special
highlight! link TSVariable Identifier
highlight! link TSWarning WarningMsg
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
