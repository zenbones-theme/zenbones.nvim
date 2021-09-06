local template = [[let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

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

let s:p.normal.left = [ [ "${common_fg}", "${normal_a_bg}", "bold" ], [ "${common_fg}", "${normal_b_bg}" ] ]
let s:p.normal.middle = [ [ "${normal_c_fg}", "${normal_c_bg}" ] ]
let s:p.normal.right = [ [ "${common_fg}", "${normal_b_bg}" ], [ "${common_fg}", "${normal_b_bg}" ] ]
let s:p.normal.warning = [ [ s:nord1, s:nord13 ] ]
let s:p.normal.error = [ [ s:nord1, s:nord11 ] ]

let s:p.inactive.left =  [ [ "${inactive_fg}", "${inactive_bg}" ], [ "${inactive_fg}", "${inactive_bg}" ] ]
let s:p.inactive.middle = [ [ "${inactive_fg}", "${inactive_bg}" ] ]
let s:p.inactive.right = [ [ "${inactive_fg}", "${inactive_bg}" ] ]

let s:p.insert.left = [ [ "${common_fg}", "${insert_a_bg}", "bold" ], [ "${common_fg}", "${normal_b_bg}" ] ]
let s:p.replace.left = [ [ "${common_fg}", "${replace_a_bg}", "bold" ], [ "${common_fg}", "${normal_b_bg}" ] ]
let s:p.visual.left = [ [ "${common_fg}", "${visual_a_bg}", "bold" ], [ "${common_fg}", "${normal_b_bg}" ] ]

let s:p.tabline.left = [ [ "${tabline_left_fg}", "${tabline_left_bg}", "italic" ] ]
let s:p.tabline.middle = [ [ "${inactive_fg}", "${inactive_bg}" ] ]
let s:p.tabline.right = [ [ "${tabline_right_fg}", "${tabline_right_bg}" ] ]
let s:p.tabline.tabsel = [ [ "${tabsel_fg}", "${tabsel_bg}", "bold" ] ]

let g:lightline#colorscheme#zenbones#palette = lightline#colorscheme#fill(s:p)
]]

local theme = require "zenbones"

return {
	"autoload/lightline/colorscheme/zenbones.vim",
	template,
	{
		common_fg = theme.Folded.fg.hex,
		inactive_bg = theme.StatusLineNC.bg.hex,
		inactive_fg = theme.StatusLineNC.fg.hex,
		normal_a_bg = theme.PmenuSbar.bg.hex,
		normal_b_bg = theme.PmenuSel.bg.hex,
		normal_c_bg = theme.StatusLine.bg.hex,
		normal_c_fg = theme.StatusLine.fg.hex,
		insert_a_bg = theme.DiffAdd.bg.hex,
		visual_a_bg = theme.Visual.bg.hex,
		replace_a_bg = theme.DiffDelete.bg.hex,
		tabline_left_bg = theme.PmenuSel.bg.hex,
		tabline_left_fg = theme.Normal.fg.hex,
		tabline_right_bg = theme.PmenuSel.bg.hex,
		tabline_right_fg = theme.Normal.fg.hex,
		tabsel_bg = theme.Normal.bg.hex,
		tabsel_fg = theme.Normal.fg.hex,
	},
}
