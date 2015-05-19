source ~/.vim/bundle.vim

set nocompatible
set history=1000
set number
set incsearch
set shell=/bin/zsh
syntax on
set synmaxcol=200

set nojoinspaces

" Convert tabs to spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent
set smarttab
set laststatus=2

set nobackup                    " don't want no backup files
set nowritebackup               " don't make a backup before overwriting a file
set noswapfile                  " no swap files

" Rubocop on save
let g:syntastic_ruby_checkers = ['mri', 'rubocop']

" Version of ruby
let g:syntastic_ruby_exec = '~/.rbenv/shims/ruby'

" Ack / Grep / CtrlP
set grepprg="ag --nocolor --nogroup --column"
let g:agprg="ag --nocolor --nogroup --column --ignore=tags"
let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching=0

" Syntastic options
" let g:syntastic_check_on_open=1

" Ctags
let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"

" Display extra whitespace
set list listchars=tab:»·,trail:·

" NERDTree
let g:NERDTreeDirArrows=0

" git commit settings
autocmd Filetype gitcommit setlocal spell textwidth=72
au BufNewFile,BufRead *.es6 set filetype=javascript

" highlight debugging
au BufEnter *.rb syn match error contained "\<binding.pry\>"
au BufEnter *.js syn match error contained "\<debugger\>"

" CtrlP settings
" make enter auto open in new tab
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<S-cr>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ 'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<c-s>'],
    \ 'AcceptSelection("v")': ['<c-v>', '<RightMouse>'],
    \ }

let g:ctrlp_custom_ignore = { 'dir': '\v[\/](node_modules)|(\.(git|hg|svn))$', 'file': '\v\.(exe|so|dll|DS_STORE)$' }

" vim-rspec
let g:rspec_runner = "os_x_iterm"
" let g:rspec_command = "!rspec --drb {spec}"

autocmd FileType ruby,eruby
      \ set foldmethod=expr |
      \ set foldexpr=getline(v:lnum)=~'^\\s*#'

source ~/.vim/mappings.vim
