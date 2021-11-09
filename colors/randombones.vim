let s:colorschemes = json_decode(join(readfile(expand('<sfile>:h:h') . '/colorschemes.json'), "\n"))

if has('nvim')
    lua math.randomseed(os.time())
    let s:index = v:lua.math.random(len(s:colorschemes)) - 1
else
    let s:index = rand() % len(s:colorschemes)
endif

let s:colorscheme = s:colorschemes[s:index]
let g:randombones_colors_name = s:colorschemes[s:index].name
if exists('s:colorscheme.background')
    call zenbones#setup_colorscheme(g:randombones_colors_name, s:colorscheme.background)
else
    call zenbones#setup_colorscheme(g:randombones_colors_name)
end
