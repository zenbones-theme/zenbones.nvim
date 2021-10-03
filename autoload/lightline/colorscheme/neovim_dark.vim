" This file is auto-generated from lua/zenbones/template/lightline.lua
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ "#9FBDD1", "#4B7C9B", "bold" ], [ "#9FBDD1", "#33566B" ] ]
let s:p.normal.middle = [ [ "#C7D6D0", "#284253" ] ]
let s:p.normal.right = [ [ "#9FBDD1", "#33566B" ], [ "#9FBDD1", "#33566B" ] ]
let s:p.normal.warning = [ [ "#B77E64", "#362C28" ] ]
let s:p.normal.error = [ [ "#DE6E7C", "#3A2A2C" ] ]

let s:p.inactive.left =  [ [ "#D6E1DC", "#1F3441" ], [ "#D6E1DC", "#1F3441" ] ]
let s:p.inactive.middle = [ [ "#D6E1DC", "#1F3441" ] ]
let s:p.inactive.right = [ [ "#D6E1DC", "#1F3441" ] ]

let s:p.insert.left = [ [ "#9FBDD1", "#455C6F", "bold" ], [ "#9FBDD1", "#33566B" ] ]
let s:p.replace.left = [ [ "#9FBDD1", "#5B2E33", "bold" ], [ "#9FBDD1", "#33566B" ] ]
let s:p.visual.left = [ [ "#9FBDD1", "#3A4A44", "bold" ], [ "#9FBDD1", "#33566B" ] ]

let s:p.tabline.left = [ [ "#C7D6D0", "#33566B", "italic" ] ]
let s:p.tabline.middle = [ [ "#D6E1DC", "#1F3441" ] ]
let s:p.tabline.right = [ [ "#C7D6D0", "#33566B" ] ]
let s:p.tabline.tabsel = [ [ "#C7D6D0", "#0F191F", "bold" ] ]

let g:lightline#colorscheme#zenbones#palette = lightline#colorscheme#fill(s:p)
