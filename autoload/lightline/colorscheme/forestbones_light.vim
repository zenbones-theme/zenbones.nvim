" This file is auto-generated from lua/zenbones/template/lightline.lua
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ "#5A5236", "#B7A874", "bold" ], [ "#5A5236", "#CFBE83" ] ]
let s:p.normal.middle = [ [ "#4F5B62", "#E0CE8F" ] ]
let s:p.normal.right = [ [ "#5A5236", "#CFBE83" ], [ "#5A5236", "#CFBE83" ] ]
let s:p.normal.warning = [ [ "#DEA000", "#F5E6D7" ] ]
let s:p.normal.error = [ [ "#F85550", "#F4E5E4" ] ]

let s:p.inactive.left =  [ [ "#758690", "#E9D795" ], [ "#758690", "#E9D795" ] ]
let s:p.inactive.middle = [ [ "#758690", "#E9D795" ] ]
let s:p.inactive.right = [ [ "#758690", "#E9D795" ] ]

let s:p.insert.left = [ [ "#5A5236", "#B0C3D4", "bold" ], [ "#5A5236", "#CFBE83" ] ]
let s:p.replace.left = [ [ "#5A5236", "#EEDFDF", "bold" ], [ "#5A5236", "#CFBE83" ] ]
let s:p.visual.left = [ [ "#5A5236", "#D3DFE6", "bold" ], [ "#5A5236", "#CFBE83" ] ]

let s:p.tabline.left = [ [ "#4F5B62", "#CFBE83", "italic" ] ]
let s:p.tabline.middle = [ [ "#758690", "#E9D795" ] ]
let s:p.tabline.right = [ [ "#4F5B62", "#CFBE83" ] ]
let s:p.tabline.tabsel = [ [ "#4F5B62", "#FAF3E1", "bold" ] ]

let g:lightline#colorscheme#zenbones#palette = lightline#colorscheme#fill(s:p)
