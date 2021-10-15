" This file is auto-generated from lua/zenbones/template/lightline.lua
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ "#564E4A", "#B2A39B", "bold" ], [ "#564E4A", "#C4B6AF" ] ]
let s:p.normal.middle = [ [ "#2C363C", "#D1C7C3" ] ]
let s:p.normal.right = [ [ "#564E4A", "#C4B6AF" ], [ "#564E4A", "#C4B6AF" ] ]
let s:p.normal.warning = [ [ "#944927", "#F0E6E4" ] ]
let s:p.normal.error = [ [ "#A8334C", "#E7DDDE" ] ]

let s:p.inactive.left =  [ [ "#596A76", "#DAD3CF" ], [ "#596A76", "#DAD3CF" ] ]
let s:p.inactive.middle = [ [ "#596A76", "#DAD3CF" ] ]
let s:p.inactive.right = [ [ "#596A76", "#DAD3CF" ] ]

let s:p.insert.left = [ [ "#564E4A", "#A9BED1", "bold" ], [ "#564E4A", "#C4B6AF" ] ]
let s:p.replace.left = [ [ "#564E4A", "#EBD8DA", "bold" ], [ "#564E4A", "#C4B6AF" ] ]
let s:p.visual.left = [ [ "#564E4A", "#D2DFE7", "bold" ], [ "#564E4A", "#C4B6AF" ] ]

let s:p.tabline.left = [ [ "#2C363C", "#C4B6AF", "italic" ] ]
let s:p.tabline.middle = [ [ "#596A76", "#DAD3CF" ] ]
let s:p.tabline.right = [ [ "#2C363C", "#C4B6AF" ] ]
let s:p.tabline.tabsel = [ [ "#2C363C", "#F0EDEC", "bold" ] ]

let g:lightline#colorscheme#zenbones#palette = lightline#colorscheme#fill(s:p)
