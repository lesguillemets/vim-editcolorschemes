if exists('g:loaded_edit_colorscheme')
  finish
endif
let g:loaded_edit_colorscheme = 1

command! EditColorschemeStart :call editcolorscheme#init('battery')
