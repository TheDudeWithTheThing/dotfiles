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

" Rubocop on save
let g:syntastic_ruby_checkers = ['mri', 'rubocop']

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

" git commit settings
autocmd Filetype gitcommit setlocal spell textwidth=72

" CtrlP settings
" make enter auto open in new tab
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<S-cr>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ 'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<c-s>'],
    \ 'AcceptSelection("v")': ['<c-v>', '<RightMouse>'],
    \ }


" vim-rails
let g:rspec_runner = "os_x_iterm"
"let g:rspec_command = 'rspec -fd {spec}'

source ~/.vim/mappings.vim

" shamelessly stolen from janus
" source ~/.vim/nerdtree.vim
