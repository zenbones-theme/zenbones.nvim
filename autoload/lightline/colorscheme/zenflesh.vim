let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ "#9E918A", "#514A46", "bold" ], [ "#9E918A", "#403A37" ] ]
let s:p.normal.middle = [ [ "#B3BABF", "#3C3633" ] ]
let s:p.normal.right = [ [ "#9E918A", "#403A37" ], [ "#9E918A", "#403A37" ] ]
let s:p.normal.warning = [ [ "#B86E54", "#352723" ] ]
let s:p.normal.error = [ [ "#BB6572", "#2A2A2A" ] ]

let s:p.inactive.left =  [ [ "#C8CDD0", "#302B29" ], [ "#C8CDD0", "#302B29" ] ]
let s:p.inactive.middle = [ [ "#C8CDD0", "#302B29" ] ]
let s:p.inactive.right = [ [ "#C8CDD0", "#302B29" ] ]

let s:p.insert.left = [ [ "#9E918A", "#384126", "bold" ], [ "#9E918A", "#403A37" ] ]
let s:p.replace.left = [ [ "#9E918A", "#5D383D", "bold" ], [ "#9E918A", "#403A37" ] ]
let s:p.visual.left = [ [ "#9E918A", "#303B41", "bold" ], [ "#9E918A", "#403A37" ] ]

let s:p.tabline.left = [ [ "#B3BABF", "#403A37", "italic" ] ]
let s:p.tabline.middle = [ [ "#C8CDD0", "#302B29" ] ]
let s:p.tabline.right = [ [ "#B3BABF", "#403A37" ] ]
let s:p.tabline.tabsel = [ [ "#B3BABF", "#1A1715", "bold" ] ]

let g:lightline#colorscheme#zenbones#palette = lightline#colorscheme#fill(s:p)
