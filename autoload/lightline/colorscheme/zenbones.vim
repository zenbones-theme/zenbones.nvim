let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:nord0 = "#2E3440"
let s:nord1 = "#3B4252"
let s:nord2 = "#434C5E"
let s:nord3 = "#4C566A"
let s:nord4 = "#D8DEE9"
let s:nord5 = "#E5E9F0"
let s:nord6 = "#ECEFF4"
let s:nord7 = "#8FBCBB"
let s:nord8 = "#88C0D0"
let s:nord9 = "#81A1C1"
let s:nord10 = "#5E81AC"
let s:nord11 = "#BF616A"
let s:nord12 = "#D08770"
let s:nord13 = "#EBCB8B"
let s:nord14 = "#A3BE8C"
let s:nord15 = "#B48EAD"

let s:p.normal.left = [ [ "#564E4A", "#B2A39B", "bold" ], [ "#564E4A", "#C4B6AF" ] ]
let s:p.normal.middle = [ [ "#2C363C", "#D1C7C3" ] ]
let s:p.normal.right = [ [ "#564E4A", "#C4B6AF" ], [ "#564E4A", "#C4B6AF" ] ]
let s:p.normal.warning = [ [ s:nord1, s:nord13 ] ]
let s:p.normal.error = [ [ s:nord1, s:nord11 ] ]

let s:p.inactive.left =  [ [ "#596A76", "#DAD3CF" ], [ "#596A76", "#DAD3CF" ] ]
let s:p.inactive.middle = [ [ "#596A76", "#DAD3CF" ] ]
let s:p.inactive.right = [ [ "#596A76", "#DAD3CF" ] ]

let s:p.insert.left = [ [ "#564E4A", "#DDE6CD", "bold" ], [ "#564E4A", "#C4B6AF" ] ]
let s:p.replace.left = [ [ "#564E4A", "#E9CACE", "bold" ], [ "#564E4A", "#C4B6AF" ] ]
let s:p.visual.left = [ [ "#564E4A", "#D2DFE7", "bold" ], [ "#564E4A", "#C4B6AF" ] ]

let s:p.tabline.left = [ [ "#2C363C", "#C4B6AF", "italic" ] ]
let s:p.tabline.middle = [ [ "#596A76", "#DAD3CF" ] ]
let s:p.tabline.right = [ [ "#2C363C", "#C4B6AF" ] ]
let s:p.tabline.tabsel = [ [ "#2C363C", "#F0EDEC", "bold" ] ]

let g:lightline#colorscheme#zenbones#palette = lightline#colorscheme#fill(s:p)
