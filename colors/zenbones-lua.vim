" You probably always want to set this in your vim file
set background=light
let g:colors_name="zenbones-lua"

let g:terminal_color_0 = '#2c363c'
let g:terminal_color_1 = '#c23c55'
let g:terminal_color_2 = '#617437'
let g:terminal_color_3 = '#914b27'
let g:terminal_color_4 = '#286486'
let g:terminal_color_5 = '#88507d'
let g:terminal_color_6 = '#3e879b'
let g:terminal_color_7 = '#f0edec'
let g:terminal_color_8 = '#44525b'
let g:terminal_color_9 = '#951434'
let g:terminal_color_10 = '#445519'
let g:terminal_color_11 = '#703410'
let g:terminal_color_12 = '#0d4e6d'
let g:terminal_color_13 = '#8a297b'
let g:terminal_color_14 = '#24697c'
let g:terminal_color_15 = '#dad3cf'

" By setting our module to nil, we clear lua's cache,
" which means the require ahead will *always* occur.
"
" This isn't strictly required but it can be a useful trick if you are
" incrementally editing your config a lot and want to be sure your themes
" changes are being picked up without restarting neovim.
"
" Note if you're working in on your theme and have :Lushify'd the buffer,
" your changes will be applied with our without the following line.
"
" The performance impact of this call can be measured in the hundreds of
" *nanoseconds* and such could be considered "production safe".
lua package.loaded['lush_theme.zenbones'] = nil

" include our theme file and pass it to lush to apply
lua require('lush')(require('lush_theme.zenbones'))
