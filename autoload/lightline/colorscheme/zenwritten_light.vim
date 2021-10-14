" This file is auto-generated from lua/zenbones/template/lightline.lua
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ "#505050", "#A6A6A6", "bold" ], [ "#505050", "#B9B9B9" ] ]
let s:p.normal.middle = [ [ "#353535", "#C9C9C9" ] ]
let s:p.normal.right = [ [ "#505050", "#B9B9B9" ], [ "#505050", "#B9B9B9" ] ]
let s:p.normal.warning = [ [ "#944927", "#F0E6E4" ] ]
let s:p.normal.error = [ [ "#A8334C", "#E7DDDE" ] ]

let s:p.inactive.left =  [ [ "#686868", "#D4D4D4" ], [ "#686868", "#D4D4D4" ] ]
let s:p.inactive.middle = [ [ "#686868", "#D4D4D4" ] ]
let s:p.inactive.right = [ [ "#686868", "#D4D4D4" ] ]

let s:p.insert.left = [ [ "#505050", "#99C6E9", "bold" ], [ "#505050", "#B9B9B9" ] ]
let s:p.replace.left = [ [ "#505050", "#E7CBCE", "bold" ], [ "#505050", "#B9B9B9" ] ]
let s:p.visual.left = [ [ "#505050", "#DDDDDD", "bold" ], [ "#505050", "#B9B9B9" ] ]

let s:p.tabline.left = [ [ "#353535", "#B9B9B9", "italic" ] ]
let s:p.tabline.middle = [ [ "#686868", "#D4D4D4" ] ]
let s:p.tabline.right = [ [ "#353535", "#B9B9B9" ] ]
let s:p.tabline.tabsel = [ [ "#353535", "#EEEEEE", "bold" ] ]

let g:lightline#colorscheme#zenbones#palette = lightline#colorscheme#fill(s:p)
