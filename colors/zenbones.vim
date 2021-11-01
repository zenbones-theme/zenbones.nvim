if exists('g:colors_name')
    highlight clear
endif

let g:colors_name = 'zenbones'

if has('nvim') && (!exists('g:' . g:colors_name . '_compat') || g:{g:colors_name}_compat == 0)
    lua require("zenbones.util").apply_colorscheme()
else
    call {g:colors_name . '_' . &background}#load()
endif
