if exists('g:colors_name')
    highlight clear
endif

let g:colors_name = 'duckbones'
set background=dark

if has('nvim') && !bones#_compat(g:colors_name)
    lua require("zenbones.util").apply_colorscheme()
    finish
endif

let s:italics = (&t_ZH != '' && &t_ZH != '[7m') || has('gui_running') || has('nvim')

if &background ==# 'dark'
    " dark start
    " This codeblock is auto-generated by shipwright.nvim
    let g:terminal_color_0 = '#0E101A'
    let g:terminal_color_1 = '#E03600'
    let g:terminal_color_2 = '#5DCD97'
    let g:terminal_color_3 = '#E39500'
    let g:terminal_color_4 = '#00A3CB'
    let g:terminal_color_5 = '#795CCC'
    let g:terminal_color_6 = '#00A3CB'
    let g:terminal_color_7 = '#EBEFC0'
    let g:terminal_color_8 = '#2B2F46'
    let g:terminal_color_9 = '#FF4821'
    let g:terminal_color_10 = '#58DB9E'
    let g:terminal_color_11 = '#F6A100'
    let g:terminal_color_12 = '#00B4E0'
    let g:terminal_color_13 = '#B3A1E6'
    let g:terminal_color_14 = '#00B4E0'
    let g:terminal_color_15 = '#B3B692'
    highlight Normal guifg=#EBEFC0 guibg=#0E101A guisp=NONE gui=NONE cterm=NONE
    highlight! link ModeMsg Normal
    highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Boolean guifg=#EBEFC0 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight BufferVisible guifg=#F0F5C4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight BufferVisibleIndex guifg=#F0F5C4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight BufferVisibleSign guifg=#F0F5C4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight CocMarkdownLink guifg=#00A3CB guibg=NONE guisp=NONE gui=underline cterm=underline
    highlight ColorColumn guifg=NONE guibg=#443426 guisp=NONE gui=NONE cterm=NONE
    highlight! link LspReferenceRead ColorColumn
    highlight! link LspReferenceText ColorColumn
    highlight! link LspReferenceWrite ColorColumn
    highlight Comment guifg=#5A5F7B guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight Conceal guifg=#9EA080 guibg=NONE guisp=NONE gui=bold,italic cterm=bold,italic
    highlight Constant guifg=#AEB18D guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight! link Character Constant
    highlight! link String Constant
    highlight! link TroubleSource Constant
    highlight! link WhichKeyValue Constant
    highlight! link helpOption Constant
    highlight Cursor guifg=#0E101A guibg=#EDF2C2 guisp=NONE gui=NONE cterm=NONE
    highlight! link TermCursor Cursor
    highlight CursorLine guifg=NONE guibg=#161926 guisp=NONE gui=NONE cterm=NONE
    highlight! link CocMenuSel CursorLine
    highlight! link CursorColumn CursorLine
    highlight! link FzfLuaFzfCursorLine CursorLine
    highlight! link SnacksPickerListCursorLine CursorLine
    highlight! link SnacksPickerPreviewCursorLine CursorLine
    highlight CursorLineNr guifg=#EBEFC0 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Delimiter guifg=#6D759D guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link markdownLinkTextDelimiter Delimiter
    highlight! link NotifyERRORIcon DiagnosticError
    highlight! link NotifyERRORTitle DiagnosticError
    highlight DiagnosticHint guifg=#795CCC guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link NotifyDEBUGIcon DiagnosticHint
    highlight! link NotifyDEBUGTitle DiagnosticHint
    highlight! link NotifyTRACEIcon DiagnosticHint
    highlight! link NotifyTRACETitle DiagnosticHint
    highlight DiagnosticInfo guifg=#00A3CB guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link NotifyINFOIcon DiagnosticInfo
    highlight! link NotifyINFOTitle DiagnosticInfo
    highlight DiagnosticOk guifg=#5DCD97 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticSignError guifg=#E03600 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocErrorSign DiagnosticSignError
    highlight DiagnosticSignHint guifg=#795CCC guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocHintSign DiagnosticSignHint
    highlight DiagnosticSignInfo guifg=#00A3CB guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocInfoSign DiagnosticSignInfo
    highlight DiagnosticSignOk guifg=#5DCD97 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticSignWarn guifg=#E39500 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocWarningSign DiagnosticSignWarn
    highlight DiagnosticUnderlineError guifg=NONE guibg=NONE guisp=#E03600 gui=undercurl cterm=undercurl
    highlight! link CocErrorHighlight DiagnosticUnderlineError
    highlight DiagnosticUnderlineHint guifg=NONE guibg=NONE guisp=#795CCC gui=undercurl cterm=undercurl
    highlight! link CocHintHighlight DiagnosticUnderlineHint
    highlight DiagnosticUnderlineInfo guifg=NONE guibg=NONE guisp=#00A3CB gui=undercurl cterm=undercurl
    highlight! link CocInfoHighlight DiagnosticUnderlineInfo
    highlight DiagnosticUnderlineOk guifg=NONE guibg=NONE guisp=#5DCD97 gui=undercurl cterm=undercurl
    highlight DiagnosticUnderlineWarn guifg=NONE guibg=NONE guisp=#E39500 gui=undercurl cterm=undercurl
    highlight! link CocWarningHighlight DiagnosticUnderlineWarn
    highlight DiagnosticVirtualTextError guifg=#E03600 guibg=#1E1818 guisp=NONE gui=NONE cterm=NONE
    highlight! link CocErrorVirtualText DiagnosticVirtualTextError
    highlight DiagnosticVirtualTextHint guifg=#795CCC guibg=#1A191E guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticVirtualTextInfo guifg=#00A3CB guibg=#181A1B guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticVirtualTextOk guifg=#5DCD97 guibg=#181A19 guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticVirtualTextWarn guifg=#E39500 guibg=#1B1918 guisp=NONE gui=NONE cterm=NONE
    highlight! link CocWarningVirtualText DiagnosticVirtualTextWarn
    highlight! link DiagnosticDeprecated DiagnosticWarn
    highlight! link DiagnosticUnnecessary DiagnosticWarn
    highlight! link NotifyWARNIcon DiagnosticWarn
    highlight! link NotifyWARNTitle DiagnosticWarn
    highlight DiffAdd guifg=NONE guibg=#15251C guisp=NONE gui=NONE cterm=NONE
    highlight! link diffAdded DiffAdd
    highlight DiffChange guifg=NONE guibg=#17232A guisp=NONE gui=NONE cterm=NONE
    highlight! link diffChanged DiffChange
    highlight DiffDelete guifg=NONE guibg=#311C1A guisp=NONE gui=NONE cterm=NONE
    highlight! link diffRemoved DiffDelete
    highlight DiffText guifg=#EBEFC0 guibg=#2A3E48 guisp=NONE gui=NONE cterm=NONE
    highlight Directory guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Error guifg=#E03600 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link DiagnosticError Error
    highlight! link ErrorMsg Error
    highlight FlashBackdrop guifg=#5A5F7B guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FlashLabel guifg=#EBEFC0 guibg=#004B5F guisp=NONE gui=NONE cterm=NONE
    highlight FloatBorder guifg=#6B729B guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FloatTitle guifg=#EBEFC0 guibg=#222536 guisp=NONE gui=bold cterm=bold
    highlight FoldColumn guifg=#51587A guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Folded guifg=#9A9FBC guibg=#272B3E guisp=NONE gui=NONE cterm=NONE
    highlight Function guifg=#EBEFC0 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link TroubleNormal Function
    highlight! link TroubleText Function
    highlight FzfLuaBufFlagAlt guifg=#00A3CB guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaBufFlagCur guifg=#E39500 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaBufNr guifg=#5DCD97 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaFzfMatch guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight FzfLuaHeaderBind guifg=#5DCD97 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaHeaderText guifg=#E39500 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaLiveSym guifg=#E39500 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaPathColNr guifg=#898FB1 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link FzfLuaPathLineNr FzfLuaPathColNr
    highlight FzfLuaTabMarker guifg=#5DCD97 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaTabTitle guifg=#00A3CB guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight GitSignsAdd guifg=#5DCD97 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link GitGutterAdd GitSignsAdd
    highlight GitSignsChange guifg=#00A3CB guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link GitGutterChange GitSignsChange
    highlight GitSignsDelete guifg=#E03600 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link GitGutterDelete GitSignsDelete
    highlight IblIndent guifg=#1F212D guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link IndentLine IblIndent
    highlight IblScope guifg=#393D50 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link IndentLineCurrent IblScope
    highlight Identifier guifg=#C6CAA1 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight IncSearch guifg=#0E101A guibg=#9A87DC guisp=NONE gui=bold cterm=bold
    highlight! link CurSearch IncSearch
    highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight LineNr guifg=#51587A guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocCodeLens LineNr
    highlight! link LspCodeLens LineNr
    highlight! link SignColumn LineNr
    highlight LspInlayHint guifg=#596392 guibg=#161926 guisp=NONE gui=NONE cterm=NONE
    highlight MoreMsg guifg=#5DCD97 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link Question MoreMsg
    highlight! link NnnNormalNC NnnNormal
    highlight! link NnnVertSplit NnnWinSeparator
    highlight NonText guifg=#484E6D guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link EndOfBuffer NonText
    highlight! link Whitespace NonText
    highlight NormalFloat guifg=NONE guibg=#222536 guisp=NONE gui=NONE cterm=NONE
    highlight! link SnacksPickerBorder NormalFloat
    highlight Number guifg=#AEB18D guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link Float Number
    highlight Pmenu guifg=NONE guibg=#222536 guisp=NONE gui=NONE cterm=NONE
    highlight PmenuSbar guifg=NONE guibg=#4B5170 guisp=NONE gui=NONE cterm=NONE
    highlight PmenuSel guifg=NONE guibg=#383C55 guisp=NONE gui=NONE cterm=NONE
    highlight PmenuThumb guifg=NONE guibg=#757DA3 guisp=NONE gui=NONE cterm=NONE
    highlight PreProc guifg=#00A3CB guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight RenderMarkdownCode guifg=NONE guibg=#161926 guisp=NONE gui=NONE cterm=NONE
    highlight Search guifg=#EBEFC0 guibg=#4D3191 guisp=NONE gui=NONE cterm=NONE
    highlight! link CocSearch Search
    highlight! link MatchParen Search
    highlight! link QuickFixLine Search
    highlight! link Sneak Search
    highlight SnacksIndent guifg=#1F212D guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight SnacksIndentScope guifg=#393D50 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight SnacksPickerMatch guifg=#795CCC guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight SneakLabelMask guifg=#795CCC guibg=#795CCC guisp=NONE gui=NONE cterm=NONE
    highlight Special guifg=#5DCD97 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link WhichKeyGroup Special
    highlight SpecialComment guifg=#5A5F7B guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link markdownUrl SpecialComment
    highlight SpecialKey guifg=#484E6D guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight SpellBad guifg=#CA4F40 guibg=NONE guisp=NONE gui=undercurl cterm=undercurl
    highlight! link CocSelectedText SpellBad
    highlight SpellCap guifg=#CA4F40 guibg=NONE guisp=NONE gui=undercurl cterm=undercurl
    highlight! link SpellLocal SpellCap
    highlight SpellRare guifg=#CA4F40 guibg=NONE guisp=NONE gui=undercurl cterm=undercurl
    highlight Statement guifg=#795CCC guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link FzfLuaBufName Statement
    highlight! link WhichKey Statement
    highlight StatusLine guifg=#EBEFC0 guibg=#232738 guisp=NONE gui=NONE cterm=NONE
    highlight! link TabLine StatusLine
    highlight! link WinBar StatusLine
    highlight StatusLineNC guifg=#F0F5C4 guibg=#1A1D2B guisp=NONE gui=NONE cterm=NONE
    highlight! link TabLineFill StatusLineNC
    highlight! link WinBarNC StatusLineNC
    highlight TabLineSel guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link BufferCurrent TabLineSel
    highlight Title guifg=#EBEFC0 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link FzfLuaTitle Title
    highlight Todo guifg=NONE guibg=NONE guisp=NONE gui=bold,underline cterm=bold,underline
    highlight Type guifg=#898FB1 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link helpSpecial Type
    highlight! link markdownCode Type
    highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline cterm=underline
    highlight Visual guifg=NONE guibg=#37382D guisp=NONE gui=NONE cterm=NONE
    highlight WarningMsg guifg=#E39500 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link DiagnosticWarn WarningMsg
    highlight! link gitcommitOverflow WarningMsg
    highlight WhichKeySeparator guifg=#51587A guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight WildMenu guifg=#0E101A guibg=#795CCC guisp=NONE gui=NONE cterm=NONE
    highlight! link SneakLabel WildMenu
    highlight WinSeparator guifg=#51587A guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link VertSplit WinSeparator
    highlight diffFile guifg=#E39500 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight diffIndexLine guifg=#E39500 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight diffLine guifg=#795CCC guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight diffNewFile guifg=#5DCD97 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight diffOldFile guifg=#E03600 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight helpHyperTextEntry guifg=#898FB1 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight helpHyperTextJump guifg=#C6CAA1 guibg=NONE guisp=NONE gui=underline cterm=underline
    highlight lCursor guifg=#0E101A guibg=#939677 guisp=NONE gui=NONE cterm=NONE
    highlight! link TermCursorNC lCursor
    highlight markdownLinkText guifg=#C6CAA1 guibg=NONE guisp=NONE gui=underline cterm=underline
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
