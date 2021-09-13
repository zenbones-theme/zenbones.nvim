let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ "#AFA099", "#4D4542", "bold" ], [ "#AFA099", "#3C3633" ] ]
let s:p.normal.middle = [ [ "#B6BCC1", "#37312F" ] ]
let s:p.normal.right = [ [ "#AFA099", "#3C3633" ], [ "#AFA099", "#3C3633" ] ]
let s:p.normal.warning = [ [ "#B86E54", "#352723" ] ]
let s:p.normal.error = [ [ "#BB6572", "#2A2A2A" ] ]

let s:p.inactive.left =  [ [ "#CBCFD3", "#2E2927" ], [ "#CBCFD3", "#2E2927" ] ]
let s:p.inactive.middle = [ [ "#CBCFD3", "#2E2927" ] ]
let s:p.inactive.right = [ [ "#CBCFD3", "#2E2927" ] ]

let s:p.insert.left = [ [ "#AFA099", "#384126", "bold" ], [ "#AFA099", "#3C3633" ] ]
let s:p.replace.left = [ [ "#AFA099", "#5D383D", "bold" ], [ "#AFA099", "#3C3633" ] ]
let s:p.visual.left = [ [ "#AFA099", "#303B41", "bold" ], [ "#AFA099", "#3C3633" ] ]

let s:p.tabline.left = [ [ "#B6BCC1", "#3C3633", "italic" ] ]
let s:p.tabline.middle = [ [ "#CBCFD3", "#2E2927" ] ]
let s:p.tabline.right = [ [ "#B6BCC1", "#3C3633" ] ]
let s:p.tabline.tabsel = [ [ "#B6BCC1", "#1A1715", "bold" ] ]

let g:lightline#colorscheme#zenbones#palette = lightline#colorscheme#fill(s:p)
