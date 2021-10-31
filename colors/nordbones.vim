" This file is auto-generated from lua/zenbones/template/vim.lua
if exists('g:colors_name')
    highlight clear
endif

set background=dark
let g:colors_name = 'nordbones'

let g:terminal_color_0 = '#2F3541'
let g:terminal_color_1 = '#C1616A'
let g:terminal_color_2 = '#A4BE8D'
let g:terminal_color_3 = '#CF866F'
let g:terminal_color_4 = '#8FBCBA'
let g:terminal_color_5 = '#B38DAC'
let g:terminal_color_6 = '#87BFCE'
let g:terminal_color_7 = '#EBEEF3'
let g:terminal_color_8 = '#475063'
let g:terminal_color_9 = '#D6787F'
let g:terminal_color_10 = '#A8CC86'
let g:terminal_color_11 = '#E09680'
let g:terminal_color_12 = '#89CAC8'
let g:terminal_color_13 = '#CF97C5'
let g:terminal_color_14 = '#82CCE0'
let g:terminal_color_15 = '#A5B4CD'

if has('nvim') && (!exists('g:zenbones_compat') || g:zenbones_compat == 0)
    lua package.loaded["nordbones"] = nil
    lua require "lush"(require "nordbones", { force_clean = false })
    finish
else
highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight BufferVisible guifg=#F2F4F7 guibg=NONE guisp=NONE gui=NONE
highlight BufferVisibleIndex guifg=#F2F4F7 guibg=NONE guisp=NONE gui=NONE
highlight BufferVisibleSign guifg=#F2F4F7 guibg=NONE guisp=NONE gui=NONE
highlight CmpItemAbbr guifg=#BFCADB guibg=NONE guisp=NONE gui=NONE
highlight CmpItemAbbrDeprecated guifg=#7285A0 guibg=NONE guisp=NONE gui=NONE
highlight CmpItemAbbrMatch guifg=#EBEEF3 guibg=NONE guisp=NONE gui=bold
highlight CmpItemAbbrMatchFuzzy guifg=#CDD5E2 guibg=NONE guisp=NONE gui=bold
highlight CmpItemKind guifg=#9EAFC9 guibg=NONE guisp=NONE gui=NONE
highlight CmpItemMenu guifg=#8DA2C0 guibg=NONE guisp=NONE gui=NONE
highlight CocMarkdownLink guifg=#87BFCE guibg=NONE guisp=NONE gui=underline
highlight ColorColumn guifg=NONE guibg=#825243 guisp=NONE gui=NONE
highlight Comment guifg=#737C90 guibg=NONE guisp=NONE gui=italic
highlight Conceal guifg=#8DA2C0 guibg=NONE guisp=NONE gui=bold,italic
highlight Constant guifg=#9EAFC9 guibg=NONE guisp=NONE gui=italic
highlight Cursor guifg=#2F3541 guibg=#EEF1F5 guisp=NONE gui=NONE
highlight CursorLine guifg=NONE guibg=#353C49 guisp=NONE gui=NONE
highlight CursorLineNr guifg=#EBEEF3 guibg=NONE guisp=NONE gui=bold
highlight Delimiter guifg=#818EAB guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticHint guifg=#B38DAC guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticInfo guifg=#8FBCBA guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticSignError guifg=#C1616A guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticSignHint guifg=#B38DAC guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticSignInfo guifg=#8FBCBA guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticSignWarn guifg=#CF866F guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticUnderlineError guifg=#C1616A guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineHint guifg=#B38DAC guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineInfo guifg=#8FBCBA guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineWarn guifg=#CF866F guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticVirtualTextError guifg=#C1616A guibg=#453536 guisp=NONE gui=NONE
highlight DiagnosticVirtualTextWarn guifg=#CF866F guibg=#403735 guisp=NONE gui=NONE
highlight DiffAdd guifg=NONE guibg=#3D4B2F guisp=NONE gui=NONE
highlight DiffChange guifg=NONE guibg=#324B4B guisp=NONE gui=NONE
highlight DiffDelete guifg=NONE guibg=#663A3E guisp=NONE gui=NONE
highlight DiffText guifg=#EBEEF3 guibg=#476968 guisp=NONE gui=NONE
highlight Directory guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight Error guifg=#C1616A guibg=NONE guisp=NONE gui=NONE
highlight FloatBorder guifg=#7E8CA8 guibg=NONE guisp=NONE gui=NONE
highlight FoldColumn guifg=#69758C guibg=NONE guisp=NONE gui=bold
highlight Folded guifg=#A8B1C5 guibg=#485061 guisp=NONE gui=NONE
highlight Function guifg=#87BFCE guibg=NONE guisp=NONE gui=NONE
highlight GitSignsAdd guifg=#A4BE8D guibg=NONE guisp=NONE gui=NONE
highlight GitSignsChange guifg=#8FBCBA guibg=NONE guisp=NONE gui=NONE
highlight GitSignsDelete guifg=#C1616A guibg=NONE guisp=NONE gui=NONE
highlight HopNextKey2 guifg=#8FBCBA guibg=NONE guisp=NONE gui=NONE
highlight Identifer guifg=#EBEEF3 guibg=NONE guisp=NONE gui=NONE
highlight Identifier guifg=#BFCADB guibg=NONE guisp=NONE gui=NONE
highlight IncSearch guifg=#2F3541 guibg=#D1BACD guisp=NONE gui=bold
highlight IndentBlanklineChar guifg=#474E5B guibg=NONE guisp=NONE gui=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight LightspeedGreyWash guifg=#737C90 guibg=NONE guisp=NONE gui=NONE
highlight LightspeedLabel guifg=#B38DAC guibg=NONE guisp=NONE gui=bold,underline
highlight LightspeedLabelDistant guifg=#87BFCE guibg=NONE guisp=NONE gui=bold,underline
highlight LightspeedLabelDistantOverlapped guifg=#87BFCE guibg=NONE guisp=NONE gui=underline
highlight LightspeedLabelOverlapped guifg=#B38DAC guibg=NONE guisp=NONE gui=underline
highlight LightspeedOneCharMatch guifg=#2F3541 guibg=#B38DAC guisp=NONE gui=bold
highlight LightspeedPendingChangeOpArea guifg=#B38DAC guibg=NONE guisp=NONE gui=NONE
highlight LightspeedShortcut guifg=#2F3541 guibg=#B38DAC guisp=NONE gui=bold,underline
highlight LineNr guifg=#69758C guibg=NONE guisp=NONE gui=NONE
highlight MoreMsg guifg=#A4BE8D guibg=NONE guisp=NONE gui=bold
highlight NeogitHunkHeaderHighlight guifg=#EBEEF3 guibg=#353C49 guisp=NONE gui=bold
highlight NnnNormal guifg=#EBEEF3 guibg=#333946 guisp=NONE gui=NONE
highlight NnnVertSplit guifg=bg guibg=NONE guisp=NONE gui=NONE
highlight NonText guifg=#606B81 guibg=NONE guisp=NONE gui=NONE
highlight Normal guifg=#EBEEF3 guibg=#2F3541 guisp=NONE gui=NONE
highlight NormalFloat guifg=NONE guibg=#3B4251 guisp=NONE gui=NONE
highlight Number guifg=#8FBCBA guibg=NONE guisp=NONE gui=italic
highlight NvimTreeCursorLine guifg=NONE guibg=#414959 guisp=NONE gui=NONE
highlight NvimTreeNormal guifg=#EBEEF3 guibg=#333946 guisp=NONE gui=NONE
highlight NvimTreeRootFolder guifg=#8FBCBA guibg=NONE guisp=NONE gui=bold
highlight NvimTreeSpecialFile guifg=#B38DAC guibg=NONE guisp=NONE gui=underline
highlight NvimTreeSymlink guifg=#8FBCBA guibg=NONE guisp=NONE gui=NONE
highlight NvimTreeVertSplit guifg=bg guibg=NONE guisp=NONE gui=NONE
highlight Pmenu guifg=NONE guibg=#414959 guisp=NONE gui=NONE
highlight PmenuSbar guifg=NONE guibg=#727F98 guisp=NONE gui=NONE
highlight PmenuSel guifg=NONE guibg=#576175 guisp=NONE gui=NONE
highlight PmenuThumb guifg=NONE guibg=#8694B0 guisp=NONE gui=NONE
highlight Search guifg=#EBEEF3 guibg=#84637E guisp=NONE gui=NONE
highlight SneakLabelMask guifg=#B38DAC guibg=#B38DAC guisp=NONE gui=NONE
highlight Special guifg=#ABBAD0 guibg=NONE guisp=NONE gui=bold
highlight SpecialComment guifg=#737C90 guibg=NONE guisp=NONE gui=bold
highlight SpecialKey guifg=#606B81 guibg=NONE guisp=NONE gui=italic
highlight SpellBad guifg=#B16B70 guibg=NONE guisp=NONE gui=undercurl
highlight SpellCap guifg=#B16B70 guibg=NONE guisp=NONE gui=undercurl
highlight SpellRare guifg=#B16B70 guibg=NONE guisp=NONE gui=undercurl
highlight Statement guifg=#81A1C1 guibg=NONE guisp=NONE gui=NONE
highlight StatusLine guifg=#EBEEF3 guibg=#485061 guisp=NONE gui=NONE
highlight StatusLineNC guifg=#F2F4F7 guibg=#414959 guisp=NONE gui=NONE
highlight TSConstant guifg=#BFCADB guibg=NONE guisp=NONE gui=bold
highlight TabLineSel guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight TelescopeBorder guifg=#7E8CA8 guibg=NONE guisp=NONE gui=NONE
highlight TelescopeMatching guifg=#B38DAC guibg=NONE guisp=NONE gui=bold
highlight TelescopeSelectionCaret guifg=#C1616A guibg=#353C49 guisp=NONE gui=NONE
highlight Title guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight Todo guifg=NONE guibg=NONE guisp=NONE gui=bold,underline
highlight Type guifg=#5E81AB guibg=NONE guisp=NONE gui=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline
highlight VertSplit guifg=#69758C guibg=NONE guisp=NONE gui=NONE
highlight Visual guifg=NONE guibg=#545F70 guisp=NONE gui=NONE
highlight WarningMsg guifg=#CF866F guibg=NONE guisp=NONE gui=NONE
highlight WildMenu guifg=#2F3541 guibg=#B38DAC guisp=NONE gui=NONE
highlight diffAdded guifg=#A4BE8D guibg=NONE guisp=NONE gui=NONE
highlight diffChanged guifg=#8FBCBA guibg=NONE guisp=NONE gui=NONE
highlight diffFile guifg=#CF866F guibg=NONE guisp=NONE gui=bold
highlight diffIndexLine guifg=#CF866F guibg=NONE guisp=NONE gui=NONE
highlight diffLine guifg=#B38DAC guibg=NONE guisp=NONE gui=bold
highlight diffNewFile guifg=#A4BE8D guibg=NONE guisp=NONE gui=italic
highlight diffOldFile guifg=#C1616A guibg=NONE guisp=NONE gui=italic
highlight diffRemoved guifg=#C1616A guibg=NONE guisp=NONE gui=NONE
highlight lCursor guifg=#2F3541 guibg=#8297B6 guisp=NONE gui=NONE
highlight markdownH1 guifg=#EBEEF3 guibg=NONE guisp=NONE gui=bold,underline
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
