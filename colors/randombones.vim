let s:colorschemes = json_decode(readfile(expand('<sfile>:h:h') . '/colorschemes.json'))

if has('nvim')
    lua math.randomseed(os.time())
    let s:index = v:lua.math.random(len(s:colorschemes)) - 1
else
    let s:index = rand() % len(s:colorschemes)
endif

let g:randombones = s:colorschemes[s:index]
if exists('g:randombones.background')
    call zenbones#setup_colorscheme(g:randombones.name, g:randombones.background)
else
    call zenbones#setup_colorscheme(g:randombones.name)
end
