if exists('g:colors_name')
    highlight clear
endif

let g:colors_name = 'zenbones'

if has('nvim') && !bones#_compat(g:colors_name)
    lua require("zenbones.util").apply_colorscheme()
    finish
endif

let s:italics = (&t_ZH != '' && &t_ZH != '[7m') || has('gui_running') || has('nvim')

if &background ==# 'dark'
    " dark start
    " This codeblock is auto-generated by shipwright.nvim
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
    highlight Normal guifg=#B4BDC3 guibg=#1C1917 guisp=NONE gui=NONE cterm=NONE
    highlight! link ModeMsg Normal
    highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Boolean guifg=#B4BDC3 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight BufferVisible guifg=#CAD0D4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight BufferVisibleIndex guifg=#CAD0D4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight BufferVisibleSign guifg=#CAD0D4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight CocMarkdownLink guifg=#66A5AD guibg=NONE guisp=NONE gui=underline cterm=underline
    highlight ColorColumn guifg=NONE guibg=#55392C guisp=NONE gui=NONE cterm=NONE
    highlight! link LspReferenceRead ColorColumn
    highlight! link LspReferenceText ColorColumn
    highlight! link LspReferenceWrite ColorColumn
    highlight Comment guifg=#6E6763 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight Conceal guifg=#797F84 guibg=NONE guisp=NONE gui=bold,italic cterm=bold,italic
    highlight Constant guifg=#868C91 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight! link Character Constant
    highlight! link String Constant
    highlight! link TroubleSource Constant
    highlight! link WhichKeyValue Constant
    highlight! link helpOption Constant
    highlight Cursor guifg=#1C1917 guibg=#C4CACF guisp=NONE gui=NONE cterm=NONE
    highlight! link TermCursor Cursor
    highlight CursorLine guifg=NONE guibg=#25211F guisp=NONE gui=NONE cterm=NONE
    highlight! link CocMenuSel CursorLine
    highlight! link CursorColumn CursorLine
    highlight! link FzfLuaFzfCursorLine CursorLine
    highlight! link SnacksPickerListCursorLine CursorLine
    highlight! link SnacksPickerPreviewCursorLine CursorLine
    highlight CursorLineNr guifg=#B4BDC3 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Delimiter guifg=#867A74 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link markdownLinkTextDelimiter Delimiter
    highlight! link NotifyERRORIcon DiagnosticError
    highlight! link NotifyERRORTitle DiagnosticError
    highlight DiagnosticHint guifg=#B279A7 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link NotifyDEBUGIcon DiagnosticHint
    highlight! link NotifyDEBUGTitle DiagnosticHint
    highlight! link NotifyTRACEIcon DiagnosticHint
    highlight! link NotifyTRACETitle DiagnosticHint
    highlight DiagnosticInfo guifg=#6099C0 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link NotifyINFOIcon DiagnosticInfo
    highlight! link NotifyINFOTitle DiagnosticInfo
    highlight DiagnosticOk guifg=#819B69 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticSignError guifg=#DE6E7C guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocErrorSign DiagnosticSignError
    highlight DiagnosticSignHint guifg=#B279A7 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocHintSign DiagnosticSignHint
    highlight DiagnosticSignInfo guifg=#6099C0 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocInfoSign DiagnosticSignInfo
    highlight DiagnosticSignOk guifg=#819B69 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticSignWarn guifg=#B77E64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocWarningSign DiagnosticSignWarn
    highlight DiagnosticUnderlineError guifg=NONE guibg=NONE guisp=#DE6E7C gui=undercurl cterm=undercurl
    highlight! link CocErrorHighlight DiagnosticUnderlineError
    highlight DiagnosticUnderlineHint guifg=NONE guibg=NONE guisp=#B279A7 gui=undercurl cterm=undercurl
    highlight! link CocHintHighlight DiagnosticUnderlineHint
    highlight DiagnosticUnderlineInfo guifg=NONE guibg=NONE guisp=#6099C0 gui=undercurl cterm=undercurl
    highlight! link CocInfoHighlight DiagnosticUnderlineInfo
    highlight DiagnosticUnderlineOk guifg=NONE guibg=NONE guisp=#819B69 gui=undercurl cterm=undercurl
    highlight DiagnosticUnderlineWarn guifg=NONE guibg=NONE guisp=#B77E64 gui=undercurl cterm=undercurl
    highlight! link CocWarningHighlight DiagnosticUnderlineWarn
    highlight DiagnosticVirtualTextError guifg=#DE6E7C guibg=#272020 guisp=NONE gui=NONE cterm=NONE
    highlight! link CocErrorVirtualText DiagnosticVirtualTextError
    highlight DiagnosticVirtualTextHint guifg=#B279A7 guibg=#252024 guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticVirtualTextInfo guifg=#6099C0 guibg=#202223 guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticVirtualTextOk guifg=#819B69 guibg=#212220 guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticVirtualTextWarn guifg=#B77E64 guibg=#242120 guisp=NONE gui=NONE cterm=NONE
    highlight! link CocWarningVirtualText DiagnosticVirtualTextWarn
    highlight! link DiagnosticDeprecated DiagnosticWarn
    highlight! link DiagnosticUnnecessary DiagnosticWarn
    highlight! link NotifyWARNIcon DiagnosticWarn
    highlight! link NotifyWARNTitle DiagnosticWarn
    highlight DiffAdd guifg=NONE guibg=#232D1A guisp=NONE gui=NONE cterm=NONE
    highlight! link diffAdded DiffAdd
    highlight DiffChange guifg=NONE guibg=#1D2C36 guisp=NONE gui=NONE cterm=NONE
    highlight! link diffChanged DiffChange
    highlight DiffDelete guifg=NONE guibg=#3E2225 guisp=NONE gui=NONE cterm=NONE
    highlight! link diffRemoved DiffDelete
    highlight DiffText guifg=#B4BDC3 guibg=#324757 guisp=NONE gui=NONE cterm=NONE
    highlight Directory guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Error guifg=#DE6E7C guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link DiagnosticError Error
    highlight! link ErrorMsg Error
    highlight FlashBackdrop guifg=#6E6763 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FlashLabel guifg=#B4BDC3 guibg=#315167 guisp=NONE gui=NONE cterm=NONE
    highlight FloatBorder guifg=#837771 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FloatTitle guifg=#B4BDC3 guibg=#302B29 guisp=NONE gui=bold cterm=bold
    highlight FoldColumn guifg=#685F5A guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Folded guifg=#AFA099 guibg=#393431 guisp=NONE gui=NONE cterm=NONE
    highlight Function guifg=#B4BDC3 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link TroubleNormal Function
    highlight! link TroubleText Function
    highlight FzfLuaBufFlagAlt guifg=#6099C0 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaBufFlagCur guifg=#B77E64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaBufNr guifg=#819B69 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaFzfMatch guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight FzfLuaHeaderBind guifg=#819B69 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaHeaderText guifg=#B77E64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaLiveSym guifg=#B77E64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaPathColNr guifg=#A1938C guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link FzfLuaPathLineNr FzfLuaPathColNr
    highlight FzfLuaTabMarker guifg=#819B69 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaTabTitle guifg=#66A5AD guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight GitSignsAdd guifg=#819B69 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link GitGutterAdd GitSignsAdd
    highlight GitSignsChange guifg=#6099C0 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link GitGutterChange GitSignsChange
    highlight GitSignsDelete guifg=#DE6E7C guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link GitGutterDelete GitSignsDelete
    highlight IblIndent guifg=#2B2725 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link IndentLine IblIndent
    highlight IblScope guifg=#494341 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link IndentLineCurrent IblScope
    highlight Identifier guifg=#979FA4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight IncSearch guifg=#1C1917 guibg=#BF8FB5 guisp=NONE gui=bold cterm=bold
    highlight! link CurSearch IncSearch
    highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight LineNr guifg=#685F5A guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocCodeLens LineNr
    highlight! link LspCodeLens LineNr
    highlight! link SignColumn LineNr
    highlight LspInlayHint guifg=#79675E guibg=#25211F guisp=NONE gui=NONE cterm=NONE
    highlight MoreMsg guifg=#819B69 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link Question MoreMsg
    highlight! link NnnNormalNC NnnNormal
    highlight! link NnnVertSplit NnnWinSeparator
    highlight NonText guifg=#5C534F guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link EndOfBuffer NonText
    highlight! link Whitespace NonText
    highlight NormalFloat guifg=NONE guibg=#302B29 guisp=NONE gui=NONE cterm=NONE
    highlight! link SnacksPickerBorder NormalFloat
    highlight Number guifg=#868C91 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link Float Number
    highlight Pmenu guifg=NONE guibg=#302B29 guisp=NONE gui=NONE cterm=NONE
    highlight PmenuSbar guifg=NONE guibg=#615853 guisp=NONE gui=NONE cterm=NONE
    highlight PmenuSel guifg=NONE guibg=#4A433F guisp=NONE gui=NONE cterm=NONE
    highlight PmenuThumb guifg=NONE guibg=#8E817B guisp=NONE gui=NONE cterm=NONE
    highlight RenderMarkdownCode guifg=NONE guibg=#25211F guisp=NONE gui=NONE cterm=NONE
    highlight Search guifg=#B4BDC3 guibg=#65435E guisp=NONE gui=NONE cterm=NONE
    highlight! link CocSearch Search
    highlight! link MatchParen Search
    highlight! link QuickFixLine Search
    highlight! link Sneak Search
    highlight SnacksIndent guifg=#2B2725 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight SnacksIndentScope guifg=#494341 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight SnacksPickerMatch guifg=#B279A7 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight SneakLabelMask guifg=#B279A7 guibg=#B279A7 guisp=NONE gui=NONE cterm=NONE
    highlight Special guifg=#8D9499 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link WhichKeyGroup Special
    highlight SpecialComment guifg=#6E6763 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link markdownUrl SpecialComment
    highlight SpecialKey guifg=#5C534F guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight SpellBad guifg=#CB7A83 guibg=NONE guisp=NONE gui=undercurl cterm=undercurl
    highlight! link CocSelectedText SpellBad
    highlight SpellCap guifg=#CB7A83 guibg=NONE guisp=NONE gui=undercurl cterm=undercurl
    highlight! link SpellLocal SpellCap
    highlight SpellRare guifg=#CB7A83 guibg=NONE guisp=NONE gui=undercurl cterm=undercurl
    highlight Statement guifg=#B4BDC3 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link FzfLuaBufName Statement
    highlight! link PreProc Statement
    highlight! link WhichKey Statement
    highlight StatusLine guifg=#B4BDC3 guibg=#352F2D guisp=NONE gui=NONE cterm=NONE
    highlight! link TabLine StatusLine
    highlight! link WinBar StatusLine
    highlight StatusLineNC guifg=#CAD0D4 guibg=#272321 guisp=NONE gui=NONE cterm=NONE
    highlight! link TabLineFill StatusLineNC
    highlight! link WinBarNC StatusLineNC
    highlight TabLineSel guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link BufferCurrent TabLineSel
    highlight Title guifg=#B4BDC3 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link FzfLuaTitle Title
    highlight Todo guifg=NONE guibg=NONE guisp=NONE gui=bold,underline cterm=bold,underline
    highlight Type guifg=#A1938C guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link helpSpecial Type
    highlight! link markdownCode Type
    highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline cterm=underline
    highlight Visual guifg=NONE guibg=#3D4042 guisp=NONE gui=NONE cterm=NONE
    highlight WarningMsg guifg=#B77E64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link DiagnosticWarn WarningMsg
    highlight! link gitcommitOverflow WarningMsg
    highlight WhichKeySeparator guifg=#685F5A guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight WildMenu guifg=#1C1917 guibg=#B279A7 guisp=NONE gui=NONE cterm=NONE
    highlight! link SneakLabel WildMenu
    highlight WinSeparator guifg=#685F5A guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link VertSplit WinSeparator
    highlight diffFile guifg=#B77E64 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight diffIndexLine guifg=#B77E64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight diffLine guifg=#B279A7 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight diffNewFile guifg=#819B69 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight diffOldFile guifg=#DE6E7C guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight helpHyperTextEntry guifg=#A1938C guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight helpHyperTextJump guifg=#979FA4 guibg=NONE guisp=NONE gui=underline cterm=underline
    highlight lCursor guifg=#1C1917 guibg=#797F84 guisp=NONE gui=NONE cterm=NONE
    highlight! link TermCursorNC lCursor
    highlight markdownLinkText guifg=#979FA4 guibg=NONE guisp=NONE gui=underline cterm=underline
    " dark end

    if !s:italics
        " no italics dark start
        " This codeblock is auto-generated by shipwright.nvim
        highlight Boolean gui=NONE cterm=NONE
        highlight Character gui=NONE cterm=NONE
        highlight Comment gui=NONE cterm=NONE
        highlight Constant gui=NONE cterm=NONE
        highlight SpecialKey gui=NONE cterm=NONE
        highlight String gui=NONE cterm=NONE
        highlight TroubleSource gui=NONE cterm=NONE
        highlight WhichKeyValue gui=NONE cterm=NONE
        highlight diffNewFile gui=NONE cterm=NONE
        highlight diffOldFile gui=NONE cterm=NONE
        highlight helpOption gui=NONE cterm=NONE
        " no italics dark end
    endif
else
    " light start
    " This codeblock is auto-generated by shipwright.nvim
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
    highlight Normal guifg=#2C363C guibg=#F0EDEC guisp=NONE gui=NONE cterm=NONE
    highlight! link ModeMsg Normal
    highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Boolean guifg=#2C363C guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight BufferVisible guifg=#596A76 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight BufferVisibleIndex guifg=#596A76 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight BufferVisibleSign guifg=#596A76 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight CocMarkdownLink guifg=#3B8992 guibg=NONE guisp=NONE gui=underline cterm=underline
    highlight ColorColumn guifg=NONE guibg=#E6C5BD guisp=NONE gui=NONE cterm=NONE
    highlight! link LspReferenceRead ColorColumn
    highlight! link LspReferenceText ColorColumn
    highlight! link LspReferenceWrite ColorColumn
    highlight Comment guifg=#948985 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight Conceal guifg=#5E6F7B guibg=NONE guisp=NONE gui=bold,italic cterm=bold,italic
    highlight Constant guifg=#556570 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight! link Character Constant
    highlight! link String Constant
    highlight! link TroubleSource Constant
    highlight! link WhichKeyValue Constant
    highlight! link helpOption Constant
    highlight Cursor guifg=#F0EDEC guibg=#2C363C guisp=NONE gui=NONE cterm=NONE
    highlight! link TermCursor Cursor
    highlight CursorLine guifg=NONE guibg=#E9E4E2 guisp=NONE gui=NONE cterm=NONE
    highlight! link CocMenuSel CursorLine
    highlight! link CursorColumn CursorLine
    highlight! link FzfLuaFzfCursorLine CursorLine
    highlight! link SnacksPickerListCursorLine CursorLine
    highlight! link SnacksPickerPreviewCursorLine CursorLine
    highlight CursorLineNr guifg=#2C363C guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Delimiter guifg=#8E817B guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link markdownLinkTextDelimiter Delimiter
    highlight! link NotifyERRORIcon DiagnosticError
    highlight! link NotifyERRORTitle DiagnosticError
    highlight DiagnosticHint guifg=#88507D guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link NotifyDEBUGIcon DiagnosticHint
    highlight! link NotifyDEBUGTitle DiagnosticHint
    highlight! link NotifyTRACEIcon DiagnosticHint
    highlight! link NotifyTRACETitle DiagnosticHint
    highlight DiagnosticInfo guifg=#286486 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link NotifyINFOIcon DiagnosticInfo
    highlight! link NotifyINFOTitle DiagnosticInfo
    highlight DiagnosticOk guifg=#4F6C31 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticSignError guifg=#A8334C guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocErrorSign DiagnosticSignError
    highlight DiagnosticSignHint guifg=#88507D guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocHintSign DiagnosticSignHint
    highlight DiagnosticSignInfo guifg=#286486 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocInfoSign DiagnosticSignInfo
    highlight DiagnosticSignOk guifg=#4F6C31 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticSignWarn guifg=#944927 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocWarningSign DiagnosticSignWarn
    highlight DiagnosticUnderlineError guifg=NONE guibg=NONE guisp=#A8334C gui=undercurl cterm=undercurl
    highlight! link CocErrorHighlight DiagnosticUnderlineError
    highlight DiagnosticUnderlineHint guifg=NONE guibg=NONE guisp=#88507D gui=undercurl cterm=undercurl
    highlight! link CocHintHighlight DiagnosticUnderlineHint
    highlight DiagnosticUnderlineInfo guifg=NONE guibg=NONE guisp=#286486 gui=undercurl cterm=undercurl
    highlight! link CocInfoHighlight DiagnosticUnderlineInfo
    highlight DiagnosticUnderlineOk guifg=NONE guibg=NONE guisp=#4F6C31 gui=undercurl cterm=undercurl
    highlight DiagnosticUnderlineWarn guifg=NONE guibg=NONE guisp=#944927 gui=undercurl cterm=undercurl
    highlight! link CocWarningHighlight DiagnosticUnderlineWarn
    highlight DiagnosticVirtualTextError guifg=#A8334C guibg=#EFDFE0 guisp=NONE gui=NONE cterm=NONE
    highlight! link CocErrorVirtualText DiagnosticVirtualTextError
    highlight DiagnosticVirtualTextHint guifg=#88507D guibg=#EFDEEB guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticVirtualTextInfo guifg=#286486 guibg=#D9E4EF guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticVirtualTextOk guifg=#4F6C31 guibg=#C9EEAB guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticVirtualTextWarn guifg=#944927 guibg=#EFDFDC guisp=NONE gui=NONE cterm=NONE
    highlight! link CocWarningVirtualText DiagnosticVirtualTextWarn
    highlight! link DiagnosticDeprecated DiagnosticWarn
    highlight! link DiagnosticUnnecessary DiagnosticWarn
    highlight! link NotifyWARNIcon DiagnosticWarn
    highlight! link NotifyWARNTitle DiagnosticWarn
    highlight DiffAdd guifg=NONE guibg=#CBE5B8 guisp=NONE gui=NONE cterm=NONE
    highlight! link diffAdded DiffAdd
    highlight DiffChange guifg=NONE guibg=#D4DEE7 guisp=NONE gui=NONE cterm=NONE
    highlight! link diffChanged DiffChange
    highlight DiffDelete guifg=NONE guibg=#EBD8DA guisp=NONE gui=NONE cterm=NONE
    highlight! link diffRemoved DiffDelete
    highlight DiffText guifg=#2C363C guibg=#A9BED1 guisp=NONE gui=NONE cterm=NONE
    highlight Directory guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Error guifg=#A8334C guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link DiagnosticError Error
    highlight! link ErrorMsg Error
    highlight FlashBackdrop guifg=#948985 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FlashLabel guifg=#2C363C guibg=#8FCAF6 guisp=NONE gui=NONE cterm=NONE
    highlight FloatBorder guifg=#786D68 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FloatTitle guifg=#2C363C guibg=#DDD6D3 guisp=NONE gui=bold cterm=bold
    highlight FoldColumn guifg=#A4968F guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Folded guifg=#564E4A guibg=#CDC2BC guisp=NONE gui=NONE cterm=NONE
    highlight Function guifg=#2C363C guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link TroubleNormal Function
    highlight! link TroubleText Function
    highlight FzfLuaBufFlagAlt guifg=#286486 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaBufFlagCur guifg=#944927 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaBufNr guifg=#4F6C31 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaFzfMatch guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight FzfLuaHeaderBind guifg=#4F6C31 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaHeaderText guifg=#944927 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaLiveSym guifg=#944927 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaPathColNr guifg=#6A5549 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link FzfLuaPathLineNr FzfLuaPathColNr
    highlight FzfLuaTabMarker guifg=#4F6C31 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaTabTitle guifg=#3B8992 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight GitSignsAdd guifg=#4F6C31 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link GitGutterAdd GitSignsAdd
    highlight GitSignsChange guifg=#286486 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link GitGutterChange GitSignsChange
    highlight GitSignsDelete guifg=#A8334C guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link GitGutterDelete GitSignsDelete
    highlight IblIndent guifg=#E1DCDA guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link IndentLine IblIndent
    highlight IblScope guifg=#BEB1AA guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link IndentLineCurrent IblScope
    highlight Identifier guifg=#44525B guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight IncSearch guifg=#F0EDEC guibg=#C074B2 guisp=NONE gui=bold cterm=bold
    highlight! link CurSearch IncSearch
    highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight LineNr guifg=#A4968F guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocCodeLens LineNr
    highlight! link LspCodeLens LineNr
    highlight! link SignColumn LineNr
    highlight LspInlayHint guifg=#A38C80 guibg=#EBE7E6 guisp=NONE gui=NONE cterm=NONE
    highlight MoreMsg guifg=#4F6C31 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link Question MoreMsg
    highlight! link NnnNormalNC NnnNormal
    highlight! link NnnVertSplit NnnWinSeparator
    highlight NonText guifg=#BBABA3 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link EndOfBuffer NonText
    highlight! link Whitespace NonText
    highlight NormalFloat guifg=NONE guibg=#DDD6D3 guisp=NONE gui=NONE cterm=NONE
    highlight! link SnacksPickerBorder NormalFloat
    highlight Number guifg=#556570 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link Float Number
    highlight Pmenu guifg=NONE guibg=#DAD3CF guisp=NONE gui=NONE cterm=NONE
    highlight PmenuSbar guifg=NONE guibg=#B2A39B guisp=NONE gui=NONE cterm=NONE
    highlight PmenuSel guifg=NONE guibg=#C4B6AF guisp=NONE gui=NONE cterm=NONE
    highlight PmenuThumb guifg=NONE guibg=#F7F6F5 guisp=NONE gui=NONE cterm=NONE
    highlight RenderMarkdownCode guifg=NONE guibg=#EBE7E6 guisp=NONE gui=NONE cterm=NONE
    highlight Search guifg=#2C363C guibg=#DEB9D6 guisp=NONE gui=NONE cterm=NONE
    highlight! link CocSearch Search
    highlight! link MatchParen Search
    highlight! link QuickFixLine Search
    highlight! link Sneak Search
    highlight SnacksIndent guifg=#E1DCDA guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight SnacksIndentScope guifg=#BEB1AA guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight SnacksPickerMatch guifg=#88507D guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight SneakLabelMask guifg=#88507D guibg=#88507D guisp=NONE gui=NONE cterm=NONE
    highlight Special guifg=#4F5E68 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link WhichKeyGroup Special
    highlight SpecialComment guifg=#948985 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link markdownUrl SpecialComment
    highlight SpecialKey guifg=#BBABA3 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight SpellBad guifg=#974352 guibg=NONE guisp=#A8334C gui=undercurl cterm=undercurl
    highlight! link CocSelectedText SpellBad
    highlight SpellCap guifg=#974352 guibg=NONE guisp=#C13C58 gui=undercurl cterm=undercurl
    highlight! link SpellLocal SpellCap
    highlight SpellRare guifg=#974352 guibg=NONE guisp=#944927 gui=undercurl cterm=undercurl
    highlight Statement guifg=#2C363C guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link FzfLuaBufName Statement
    highlight! link PreProc Statement
    highlight! link WhichKey Statement
    highlight StatusLine guifg=#2C363C guibg=#D6CDC9 guisp=NONE gui=NONE cterm=NONE
    highlight! link TabLine StatusLine
    highlight! link WinBar StatusLine
    highlight StatusLineNC guifg=#596A76 guibg=#E1DCD9 guisp=NONE gui=NONE cterm=NONE
    highlight! link TabLineFill StatusLineNC
    highlight! link WinBarNC StatusLineNC
    highlight TabLineSel guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link BufferCurrent TabLineSel
    highlight Title guifg=#2C363C guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link FzfLuaTitle Title
    highlight Todo guifg=NONE guibg=NONE guisp=NONE gui=bold,underline cterm=bold,underline
    highlight Type guifg=#6A5549 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link helpSpecial Type
    highlight! link markdownCode Type
    highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline cterm=underline
    highlight Visual guifg=NONE guibg=#CBD9E3 guisp=NONE gui=NONE cterm=NONE
    highlight WarningMsg guifg=#944927 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link DiagnosticWarn WarningMsg
    highlight! link gitcommitOverflow WarningMsg
    highlight WhichKeySeparator guifg=#A4968F guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight WildMenu guifg=#F0EDEC guibg=#88507D guisp=NONE gui=NONE cterm=NONE
    highlight! link SneakLabel WildMenu
    highlight WinSeparator guifg=#A4968F guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link VertSplit WinSeparator
    highlight diffFile guifg=#944927 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight diffIndexLine guifg=#944927 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight diffLine guifg=#88507D guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight diffNewFile guifg=#4F6C31 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight diffOldFile guifg=#A8334C guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight helpHyperTextEntry guifg=#6A5549 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight helpHyperTextJump guifg=#44525B guibg=NONE guisp=NONE gui=underline cterm=underline
    highlight lCursor guifg=#F0EDEC guibg=#4D5C65 guisp=NONE gui=NONE cterm=NONE
    highlight! link TermCursorNC lCursor
    highlight markdownLinkText guifg=#44525B guibg=NONE guisp=NONE gui=underline cterm=underline
    " light end

    if !s:italics
        " no italics light start
        " This codeblock is auto-generated by shipwright.nvim
        highlight Boolean gui=NONE cterm=NONE
        highlight Character gui=NONE cterm=NONE
        highlight Comment gui=NONE cterm=NONE
        highlight Constant gui=NONE cterm=NONE
        highlight SpecialKey gui=NONE cterm=NONE
        highlight String gui=NONE cterm=NONE
        highlight TroubleSource gui=NONE cterm=NONE
        highlight WhichKeyValue gui=NONE cterm=NONE
        highlight diffNewFile gui=NONE cterm=NONE
        highlight diffOldFile gui=NONE cterm=NONE
        highlight helpOption gui=NONE cterm=NONE
        " no italics light end
    endif
endif

if has('terminal')
    highlight! link StatusLineTerm StatusLine
    highlight! link StatusLineTermNC StatusLineNC
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
