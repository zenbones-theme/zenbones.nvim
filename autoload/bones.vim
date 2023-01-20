function! bones#_compat(colors_name)
    if exists('g:' . a:colors_name . '_compat')
        return g:{a:colors_name}_compat != 0
    elseif exists('g:bones_compat')
        return g:bones_compat != 0
    else
        return 0
    endif
endfunction
