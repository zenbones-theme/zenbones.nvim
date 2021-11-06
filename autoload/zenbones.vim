function! zenbones#setup_colorscheme(...) abort
    if exists('g:colors_name')
        highlight clear
    endif

    let g:colors_name = a:1
    let l:bg = a:0 == 2 ? a:2 : v:null
    if l:bg != v:null
        let &background = l:bg
    endif

    if has('nvim') && (!exists('g:' . g:colors_name . '_compat') || g:{g:colors_name}_compat == 0)
        lua require("zenbones.util").apply_colorscheme()
    else
        call zenbones#generated#{g:colors_name . (l:bg == v:null ? '_' . &background : '')}#load()
    endif
endfunction
