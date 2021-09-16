let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ "#9E948F", "#524C4A", "bold" ], [ "#9E948F", "#3F3A38" ] ]
let s:p.normal.middle = [ [ "#B4BDC3", "#3D3836" ] ]
let s:p.normal.right = [ [ "#9E948F", "#3F3A38" ], [ "#9E948F", "#3F3A38" ] ]
let s:p.normal.warning = [ [ "#B77E64", "#362C28" ] ]
let s:p.normal.error = [ [ "#DE6E7C", "#3A2A2C" ] ]

let s:p.inactive.left =  [ [ "#CAD0D4", "#312D2B" ], [ "#CAD0D4", "#312D2B" ] ]
let s:p.inactive.middle = [ [ "#CAD0D4", "#312D2B" ] ]
let s:p.inactive.right = [ [ "#CAD0D4", "#312D2B" ] ]

let s:p.insert.left = [ [ "#9E948F", "#333C2C", "bold" ], [ "#9E948F", "#3F3A38" ] ]
let s:p.replace.left = [ [ "#9E948F", "#5B2E33", "bold" ], [ "#9E948F", "#3F3A38" ] ]
let s:p.visual.left = [ [ "#9E948F", "#37393B", "bold" ], [ "#9E948F", "#3F3A38" ] ]

let s:p.tabline.left = [ [ "#B4BDC3", "#3F3A38", "italic" ] ]
let s:p.tabline.middle = [ [ "#CAD0D4", "#312D2B" ] ]
let s:p.tabline.right = [ [ "#B4BDC3", "#3F3A38" ] ]
let s:p.tabline.tabsel = [ [ "#B4BDC3", "#1C1918", "bold" ] ]

let g:lightline#colorscheme#zenbones#palette = lightline#colorscheme#fill(s:p)
