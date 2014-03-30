source ~/.vim/bundle.vim

set nocompatible
set history=1000
set number
set incsearch

syntax on
" Convert tabs to spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent
set smarttab

" Ack / Grep / CtrlP
let g:ackprg="ag --nocolor --nogroup --column"
let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching=0

" NERDTRee options
let g:NERDTreeQuitOnOpen=0 " don't close after opening a file

" Syntastic options
let g:syntastic_check_on_open=1

" Ctags
let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Display extra whitespace
set list listchars=tab:»·,trail:·

source ~/.vim/mappings.vim
