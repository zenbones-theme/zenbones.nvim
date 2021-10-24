" This file is auto-generated from lua/zenbones/template/lightline.lua
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ "#A8B1C5", "#727F98", "bold" ], [ "#A8B1C5", "#576175" ] ]
let s:p.normal.middle = [ [ "#EBEEF3", "#485061" ] ]
let s:p.normal.right = [ [ "#A8B1C5", "#576175" ], [ "#A8B1C5", "#576175" ] ]
let s:p.normal.warning = [ [ "#CF866F", "#403735" ] ]
let s:p.normal.error = [ [ "#C1616A", "#453536" ] ]

let s:p.inactive.left =  [ [ "#F2F4F7", "#414959" ], [ "#F2F4F7", "#414959" ] ]
let s:p.inactive.middle = [ [ "#F2F4F7", "#414959" ] ]
let s:p.inactive.right = [ [ "#F2F4F7", "#414959" ] ]

let s:p.insert.left = [ [ "#A8B1C5", "#476968", "bold" ], [ "#A8B1C5", "#576175" ] ]
let s:p.replace.left = [ [ "#A8B1C5", "#663A3E", "bold" ], [ "#A8B1C5", "#576175" ] ]
let s:p.visual.left = [ [ "#A8B1C5", "#545F70", "bold" ], [ "#A8B1C5", "#576175" ] ]

let s:p.tabline.left = [ [ "#EBEEF3", "#576175", "italic" ] ]
let s:p.tabline.middle = [ [ "#F2F4F7", "#414959" ] ]
let s:p.tabline.right = [ [ "#EBEEF3", "#576175" ] ]
let s:p.tabline.tabsel = [ [ "#EBEEF3", "#2F3541", "bold" ] ]

let g:lightline#colorscheme#zenbones#palette = lightline#colorscheme#fill(s:p)
