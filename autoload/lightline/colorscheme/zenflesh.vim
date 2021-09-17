let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ "#BBAEA8", "#716965", "bold" ], [ "#BBAEA8", "#4E4845" ] ]
let s:p.normal.middle = [ [ "#B4BDC3", "#3D3836" ] ]
let s:p.normal.right = [ [ "#BBAEA8", "#4E4845" ], [ "#BBAEA8", "#4E4845" ] ]
let s:p.normal.warning = [ [ "#B77E64", "#362C28" ] ]
let s:p.normal.error = [ [ "#DE6E7C", "#3A2A2C" ] ]

let s:p.inactive.left =  [ [ "#CAD0D4", "#312D2B" ], [ "#CAD0D4", "#312D2B" ] ]
let s:p.inactive.middle = [ [ "#CAD0D4", "#312D2B" ] ]
let s:p.inactive.right = [ [ "#CAD0D4", "#312D2B" ] ]

let s:p.insert.left = [ [ "#BBAEA8", "#455C6F", "bold" ], [ "#BBAEA8", "#4E4845" ] ]
let s:p.replace.left = [ [ "#BBAEA8", "#5B2E33", "bold" ], [ "#BBAEA8", "#4E4845" ] ]
let s:p.visual.left = [ [ "#BBAEA8", "#37393B", "bold" ], [ "#BBAEA8", "#4E4845" ] ]

let s:p.tabline.left = [ [ "#B4BDC3", "#4E4845", "italic" ] ]
let s:p.tabline.middle = [ [ "#CAD0D4", "#312D2B" ] ]
let s:p.tabline.right = [ [ "#B4BDC3", "#4E4845" ] ]
let s:p.tabline.tabsel = [ [ "#B4BDC3", "#1C1918", "bold" ] ]

let g:lightline#colorscheme#zenbones#palette = lightline#colorscheme#fill(s:p)
