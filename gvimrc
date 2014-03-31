set guifont=Monaco:h11
set bg=dark
colorscheme jellybeans "ir_black

if has('gui_macvim')
  macmenu Edit.Find.Find\.\.\. key=<nop>
  map <D-f> :CtrlP<CR>
endif
