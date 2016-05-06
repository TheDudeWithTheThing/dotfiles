set guifont=Inconsolata:h14
set bg=dark
colorscheme jellybeans

autocmd FileType ruby setlocal cc=80,120

if has('gui_macvim')
  macmenu Edit.Find.Find\.\.\. key=<nop>
  macmenu File.New\ Tab key=<D-T>
endif

