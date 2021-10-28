local template = [[" This file is auto-generated from lua/zenbones/template/lightline.lua
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ "${common_fg}", "${normal_a_bg}", "bold" ], [ "${common_fg}", "${normal_b_bg}" ] ]
let s:p.normal.middle = [ [ "${normal_c_fg}", "${normal_c_bg}" ] ]
let s:p.normal.right = [ [ "${common_fg}", "${normal_b_bg}" ], [ "${common_fg}", "${normal_b_bg}" ] ]
let s:p.normal.warning = [ [ "${warning_fg}", "${warning_bg}" ] ]
let s:p.normal.error = [ [ "${error_fg}", "${error_bg}" ] ]

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

return function(name, specs)
	return {
		string.format("autoload/lightline/colorscheme/%s.vim", name),
		template,
		{
			common_fg = specs.Folded.fg.hex,
			inactive_bg = specs.StatusLineNC.bg.hex,
			inactive_fg = specs.StatusLineNC.fg.hex,
			normal_a_bg = specs.PmenuSbar.bg.hex,
			normal_b_bg = specs.PmenuSel.bg.hex,
			normal_c_bg = specs.StatusLine.bg.hex,
			normal_c_fg = specs.StatusLine.fg.hex,
			insert_a_bg = specs.DiffText.bg.hex,
			visual_a_bg = specs.Visual.bg.hex,
			replace_a_bg = specs.DiffDelete.bg.hex,
			tabline_left_bg = specs.PmenuSel.bg.hex,
			tabline_left_fg = specs.Normal.fg.hex,
			tabline_right_bg = specs.PmenuSel.bg.hex,
			tabline_right_fg = specs.Normal.fg.hex,
			tabsel_bg = specs.Normal.bg.hex,
			tabsel_fg = specs.Normal.fg.hex,
			warning_bg = specs.DiagnosticVirtualTextWarn.bg.hex,
			warning_fg = specs.DiagnosticVirtualTextWarn.fg.hex,
			error_bg = specs.DiagnosticVirtualTextError.bg.hex,
			error_fg = specs.DiagnosticVirtualTextError.fg.hex,
		},
	}
end
