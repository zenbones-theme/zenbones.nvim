" This file is auto-generated from lua/zenbones/template/lightline.lua
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ "#46624A", "#9AB79E", "bold" ], [ "#46624A", "#B1C8B5" ] ]
let s:p.normal.middle = [ [ "#212F19", "#C0D3C3" ] ]
let s:p.normal.right = [ [ "#46624A", "#B1C8B5" ], [ "#46624A", "#B1C8B5" ] ]
let s:p.normal.warning = [ [ "#944927", "#F0E6E4" ] ]
let s:p.normal.error = [ [ "#A8334C", "#E7DDDE" ] ]

let s:p.inactive.left =  [ [ "#597F43", "#CCDBCE" ], [ "#597F43", "#CCDBCE" ] ]
let s:p.inactive.middle = [ [ "#597F43", "#CCDBCE" ] ]
let s:p.inactive.right = [ [ "#597F43", "#CCDBCE" ] ]

let s:p.insert.left = [ [ "#46624A", "#99C6E9", "bold" ], [ "#46624A", "#B1C8B5" ] ]
let s:p.replace.left = [ [ "#46624A", "#E7CBCE", "bold" ], [ "#46624A", "#B1C8B5" ] ]
let s:p.visual.left = [ [ "#46624A", "#D8E6D0", "bold" ], [ "#46624A", "#B1C8B5" ] ]

let s:p.tabline.left = [ [ "#212F19", "#B1C8B5", "italic" ] ]
let s:p.tabline.middle = [ [ "#597F43", "#CCDBCE" ] ]
let s:p.tabline.right = [ [ "#212F19", "#B1C8B5" ] ]
let s:p.tabline.tabsel = [ [ "#212F19", "#E7EEE8", "bold" ] ]

let g:lightline#colorscheme#zenbones#palette = lightline#colorscheme#fill(s:p)
