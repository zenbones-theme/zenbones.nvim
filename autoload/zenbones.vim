function! zenbones#setup_colorscheme(colors_name, ...) abort
    if exists('g:colors_name')
        highlight clear
    endif

    let g:colors_name = a:colors_name
    let l:bg = a:0 == 1 ? a:1 : v:null
    if l:bg != v:null
        let &background = l:bg
    endif

    if has('nvim') && (!exists('g:' . g:colors_name . '_compat') || g:{g:colors_name}_compat == 0)
        lua require("zenbones.util").apply_colorscheme()
    else
        call zenbones#generated#{g:colors_name . (l:bg == v:null ? '_' . &background : '')}#load()

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
    endif
endfunction
