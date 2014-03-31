source ~/.vim/bundle.vim

set nocompatible
set history=1000
set number
set incsearch
set shell=/bin/zsh
syntax on

" Convert tabs to spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent
set smarttab
set laststatus=2

" Ack / Grep / CtrlP
let g:ackprg="ag --nocolor --nogroup --column"
let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching=0

" Syntastic options
let g:syntastic_check_on_open=1

" Ctags
let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"

" Display extra whitespace
set list listchars=tab:»·,trail:·

source ~/.vim/mappings.vim

" shamelessly stolen from janus
" source ~/.vim/nerdtree.vim
