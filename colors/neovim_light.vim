" This file is auto-generated from lua/zenbones/template/vim.lua
if exists('g:colors_name')
    highlight clear
    syntax reset
    set t_Co=256
endif

set background=dark
let g:colors_name = 'neovim_light'

let g:terminal_color_0 = '#E7EEE8'
let g:terminal_color_1 = '#A8334C'
let g:terminal_color_2 = '#567A30'
let g:terminal_color_3 = '#944927'
let g:terminal_color_4 = '#286486'
let g:terminal_color_5 = '#88507D'
let g:terminal_color_6 = '#3B8992'
let g:terminal_color_7 = '#212F19'
let g:terminal_color_8 = '#B9D0BC'
let g:terminal_color_9 = '#94253E'
let g:terminal_color_10 = '#466522'
let g:terminal_color_11 = '#803D1C'
let g:terminal_color_12 = '#1D5573'
let g:terminal_color_13 = '#7B3B70'
let g:terminal_color_14 = '#2B747C'
let g:terminal_color_15 = '#4D6E3A'

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
highlight BufferVisible guifg=#597F43 guibg=NONE guisp=NONE gui=NONE
highlight BufferVisibleIndex guifg=#597F43 guibg=NONE guisp=NONE gui=NONE
highlight BufferVisibleSign guifg=#597F43 guibg=NONE guisp=NONE gui=NONE
highlight CocMarkdownLink guifg=#3B8992 guibg=NONE guisp=NONE gui=underline
highlight ColorColumn guifg=NONE guibg=#EFD8D3 guisp=NONE gui=NONE
highlight Comment guifg=#849F88 guibg=NONE guisp=NONE gui=italic
highlight Conceal guifg=#496837 guibg=NONE guisp=NONE gui=bold,italic
highlight Constant guifg=#54783F guibg=NONE guisp=NONE gui=italic
highlight Cursor guifg=#EDF2EE guibg=#212F19 guisp=NONE gui=NONE
highlight CursorLine guifg=NONE guibg=#DBE6DD guisp=NONE gui=NONE
highlight CursorLineNr guifg=#212F19 guibg=NONE guisp=NONE gui=bold
highlight Delimiter guifg=#739C79 guibg=NONE guisp=NONE gui=NONE
highlight DiffAdd guifg=NONE guibg=#D8E7CC guisp=NONE gui=NONE
highlight DiffChange guifg=NONE guibg=#C0DAF2 guisp=NONE gui=NONE
highlight DiffDelete guifg=NONE guibg=#E7CBCE guisp=NONE gui=NONE
highlight DiffText guifg=#212F19 guibg=#99C6E9 guisp=NONE gui=NONE
highlight Directory guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight Error guifg=#A8334C guibg=NONE guisp=NONE gui=NONE
highlight FloatBorder guifg=#618967 guibg=NONE guisp=NONE gui=NONE
highlight FoldColumn guifg=#91B195 guibg=NONE guisp=NONE gui=bold
highlight Folded guifg=#46624A guibg=#BACEBD guisp=NONE gui=NONE
highlight Function guifg=#212F19 guibg=NONE guisp=NONE gui=NONE
highlight GitSignsAdd guifg=#567A30 guibg=NONE guisp=NONE gui=NONE
highlight GitSignsChange guifg=#286486 guibg=NONE guisp=NONE gui=NONE
highlight GitSignsDelete guifg=#A8334C guibg=NONE guisp=NONE gui=NONE
highlight HopNextKey2 guifg=#286486 guibg=NONE guisp=NONE gui=NONE
highlight Identifier guifg=#3F5A30 guibg=NONE guisp=NONE gui=NONE
highlight IncSearch guifg=#E7EEE8 guibg=#88507D guisp=NONE gui=bold
highlight IndentBlanklineChar guifg=#C8D5CA guibg=NONE guisp=NONE gui=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight LightspeedGreyWash guifg=#849F88 guibg=NONE guisp=NONE gui=NONE
highlight LightspeedLabel guifg=#88507D guibg=NONE guisp=NONE gui=bold,underline
highlight LightspeedLabelDistant guifg=#3B8992 guibg=NONE guisp=NONE gui=bold,underline
highlight LightspeedLabelDistantOverlapped guifg=#3B8992 guibg=NONE guisp=NONE gui=underline
highlight LightspeedLabelOverlapped guifg=#88507D guibg=NONE guisp=NONE gui=underline
highlight LightspeedOneCharMatch guifg=#E7EEE8 guibg=#88507D guisp=NONE gui=bold
highlight LightspeedPendingChangeOpArea guifg=#88507D guibg=NONE guisp=NONE gui=NONE
highlight LightspeedShortcut guifg=#E7EEE8 guibg=#88507D guisp=NONE gui=bold,underline
highlight LineNr guifg=#91B195 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultHint guifg=#88507D guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsDefaultInformation guifg=#286486 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsUnderlineError guifg=#A8334C guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineHint guifg=#88507D guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineInformation guifg=#286486 guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineWarning guifg=#944927 guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsVirtualTextError guifg=#A8334C guibg=#E7DDDE guisp=NONE gui=NONE
highlight LspDiagnosticsVirtualTextWarning guifg=#944927 guibg=#F0E6E4 guisp=NONE gui=NONE
highlight MoreMsg guifg=#567A30 guibg=NONE guisp=NONE gui=bold
highlight NeogitHunkHeaderHighlight guifg=#212F19 guibg=#DBE6DD guisp=NONE gui=bold
highlight NonText guifg=#ABC4AF guibg=NONE guisp=NONE gui=NONE
highlight Normal guifg=#212F19 guibg=#E7EEE8 guisp=NONE gui=NONE
highlight NormalFloat guifg=NONE guibg=#D5E1D7 guisp=NONE gui=NONE
highlight Number guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight Pmenu guifg=NONE guibg=#CCDBCE guisp=NONE gui=NONE
highlight PmenuSbar guifg=NONE guibg=#9AB79E guisp=NONE gui=NONE
highlight PmenuSel guifg=NONE guibg=#B1C8B5 guisp=NONE gui=NONE
highlight PmenuThumb guifg=NONE guibg=#F6F9F6 guisp=NONE gui=NONE
highlight Search guifg=#212F19 guibg=#D2A6C8 guisp=NONE gui=NONE
highlight SneakLabelMask guifg=#88507D guibg=#88507D guisp=NONE gui=NONE
highlight Special guifg=#4B6B38 guibg=NONE guisp=NONE gui=bold
highlight SpecialComment guifg=#849F88 guibg=NONE guisp=NONE gui=bold
highlight SpecialKey guifg=#ABC4AF guibg=NONE guisp=NONE gui=italic
highlight SpellBad guifg=#974352 guibg=NONE guisp=NONE gui=undercurl
highlight SpellCap guifg=#974352 guibg=NONE guisp=NONE gui=undercurl
highlight SpellRare guifg=#974352 guibg=NONE guisp=NONE gui=undercurl
highlight Statement guifg=#212F19 guibg=NONE guisp=NONE gui=bold
highlight StatusLine guifg=#212F19 guibg=#C0D3C3 guisp=NONE gui=NONE
highlight StatusLineNC guifg=#597F43 guibg=#CCDBCE guisp=NONE gui=NONE
highlight TabLine guifg=#212F19 guibg=#C0D3C3 guisp=NONE gui=italic
highlight TabLineSel guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight TelescopeMatching guifg=#88507D guibg=NONE guisp=NONE gui=bold
highlight TelescopeSelectionCaret guifg=#A8334C guibg=#DBE6DD guisp=NONE gui=NONE
highlight Title guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight Todo guifg=NONE guibg=NONE guisp=NONE gui=bold,underline
highlight Type guifg=#4A684F guibg=NONE guisp=NONE gui=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline
highlight Visual guifg=NONE guibg=#D8E6D0 guisp=NONE gui=NONE
highlight WarningMsg guifg=#944927 guibg=NONE guisp=NONE gui=NONE
highlight WildMenu guifg=#E7EEE8 guibg=#88507D guisp=NONE gui=NONE
highlight diffAdded guifg=#567A30 guibg=NONE guisp=NONE gui=NONE
highlight diffChanged guifg=#286486 guibg=NONE guisp=NONE gui=NONE
highlight diffFile guifg=#944927 guibg=NONE guisp=NONE gui=bold
highlight diffIndexLine guifg=#944927 guibg=NONE guisp=NONE gui=NONE
highlight diffLine guifg=#88507D guibg=NONE guisp=NONE gui=bold
highlight diffNewFile guifg=#567A30 guibg=NONE guisp=NONE gui=italic
highlight diffOldFile guifg=#A8334C guibg=NONE guisp=NONE gui=italic
highlight diffRemoved guifg=#A8334C guibg=NONE guisp=NONE gui=NONE
highlight helpHyperTextJump guifg=#195276 guibg=NONE guisp=NONE gui=NONE
highlight lCursor guifg=#EDF2EE guibg=#496837 guisp=NONE gui=NONE
highlight markdownH1 guifg=#212F19 guibg=NONE guisp=NONE gui=bold,underline
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
highlight! link helpOption helpHyperTextJump
highlight! link helpSpecial Type
highlight! link markdownCode Identifier
highlight! link markdownH2 Statement
highlight! link markdownH3 Statement
highlight! link markdownH4 Special
highlight! link markdownH5 Special
highlight! link markdownH6 Special
highlight! link markdownLinkTextDelimiter Delimiter
highlight! link markdownUrl helpHyperTextJump
