source ~/.vim/bundle.vim

set nocompatible

set t_Co=256
syntax on
colorscheme Tomorrow-Night-Eighties

set expandtab
set history=1000
set incsearch
set iskeyword+=-
set laststatus=2
set nobackup                    " don't want no backup files
set noerrorbells
set nojoinspaces
set noswapfile                  " no swap files
set nowritebackup               " don't make a backup before overwriting a file
set number
set scrolloff=3 " Start scrolling three lines before horizontal border of window
set shell=/bin/zsh
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set synmaxcol=200
set tabstop=2


command Greview :Git! diff --staged

" Airline
let g:airline_theme = 'base16'

" Syntastic options
let g:syntastic_mode_map = { 'mode': 'active' }
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_cucumber_cucumber_args="--profile syntastic"
let g:syntastic_warning_symbol = "⚠"

" Version of ruby
let g:syntastic_ruby_exec = '~/.rbenv/shims/ruby'

" Ack / Grep / CtrlP
set grepprg="ag --nocolor --nogroup --column"
let g:ag_prg="ag --nocolor --nogroup --column --ignore=tags"
let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching=0

" Syntastic options
" let g:syntastic_check_on_open=1

" Ctags
let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"

" Display extra whitespace
scriptencoding utf-8
set encoding=utf-8
set list listchars=tab:»·,trail:.

" NERDTree
let g:NERDTreeDirArrows=0
let g:NERDTreeQuitOnOpen=0

" git commit settings
autocmd Filetype gitcommit setlocal spell textwidth=72

au BufNewFile,BufRead *.es6 set filetype=javascript

au BufNewFile,BufRead *.exs set filetype=elixir

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
let g:rspec_runner = "os_x_iterm2"
" let g:rspec_command = "!rspec --drb {spec}"

autocmd FileType ruby,eruby
      \ set foldmethod=expr |
      \ set foldexpr=getline(v:lnum)=~'^\\s*#'

" rust
let g:rustfmt_autosave = 1

source ~/.vim/mappings.vim
