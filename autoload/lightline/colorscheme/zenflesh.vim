" This file is auto-generated from lua/zenbones/template/lightline.lua
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ "#AFA099", "#736863", "bold" ], [ "#AFA099", "#4F4844" ] ]
let s:p.normal.middle = [ [ "#B4BDC3", "#3E3835" ] ]
let s:p.normal.right = [ [ "#AFA099", "#4F4844" ], [ "#AFA099", "#4F4844" ] ]
let s:p.normal.warning = [ [ "#B77E64", "#362C28" ] ]
let s:p.normal.error = [ [ "#DE6E7C", "#3A2A2C" ] ]

let s:p.inactive.left =  [ [ "#CAD0D4", "#322D2B" ], [ "#CAD0D4", "#322D2B" ] ]
let s:p.inactive.middle = [ [ "#CAD0D4", "#322D2B" ] ]
let s:p.inactive.right = [ [ "#CAD0D4", "#322D2B" ] ]

let s:p.insert.left = [ [ "#AFA099", "#324757", "bold" ], [ "#AFA099", "#4F4844" ] ]
let s:p.replace.left = [ [ "#AFA099", "#3E2225", "bold" ], [ "#AFA099", "#4F4844" ] ]
let s:p.visual.left = [ [ "#AFA099", "#37393B", "bold" ], [ "#AFA099", "#4F4844" ] ]

let s:p.tabline.left = [ [ "#B4BDC3", "#4F4844", "italic" ] ]
let s:p.tabline.middle = [ [ "#CAD0D4", "#322D2B" ] ]
let s:p.tabline.right = [ [ "#B4BDC3", "#4F4844" ] ]
let s:p.tabline.tabsel = [ [ "#B4BDC3", "#1C1917", "bold" ] ]

let g:lightline#colorscheme#zenbones#palette = lightline#colorscheme#fill(s:p)
