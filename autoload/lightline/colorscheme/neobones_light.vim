" This file is auto-generated from lua/zenbones/template/lightline.lua
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ "#4A4F4A", "#9BA69D", "bold" ], [ "#4A4F4A", "#ADB9AF" ] ]
let s:p.normal.middle = [ [ "#202E18", "#BDCABF" ] ]
let s:p.normal.right = [ [ "#4A4F4A", "#ADB9AF" ], [ "#4A4F4A", "#ADB9AF" ] ]
let s:p.normal.warning = [ [ "#944927", "#F0E6E4" ] ]
let s:p.normal.error = [ [ "#A8334C", "#E7DDDE" ] ]

let s:p.inactive.left =  [ [ "#4B663C", "#C8D5C9" ], [ "#4B663C", "#C8D5C9" ] ]
let s:p.inactive.middle = [ [ "#4B663C", "#C8D5C9" ] ]
let s:p.inactive.right = [ [ "#4B663C", "#C8D5C9" ] ]

let s:p.insert.left = [ [ "#4A4F4A", "#A6BBCF", "bold" ], [ "#4A4F4A", "#ADB9AF" ] ]
let s:p.replace.left = [ [ "#4A4F4A", "#EAD5D7", "bold" ], [ "#4A4F4A", "#ADB9AF" ] ]
let s:p.visual.left = [ [ "#4A4F4A", "#B1EA90", "bold" ], [ "#4A4F4A", "#ADB9AF" ] ]

let s:p.tabline.left = [ [ "#202E18", "#ADB9AF", "italic" ] ]
let s:p.tabline.middle = [ [ "#4B663C", "#C8D5C9" ] ]
let s:p.tabline.right = [ [ "#202E18", "#ADB9AF" ] ]
let s:p.tabline.tabsel = [ [ "#202E18", "#E5EDE6", "bold" ] ]

let g:lightline#colorscheme#zenbones#palette = lightline#colorscheme#fill(s:p)
