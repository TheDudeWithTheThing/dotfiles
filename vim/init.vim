set nocompatible

let mapleader = "\\"

call plug#begin('~/.vim/plugged')

Plug 'psf/black', { 'tag': '19.10b0' } " Python Black formatter
Plug 'bronson/vim-trailing-whitespace' " Highlights trailing whitespace in red and provides :FixWhitespace to fix it.
Plug 'christoomey/vim-system-copy' " Vim plugin for copying to the system clipboard with text-objects and motions
Plug 'christoomey/vim-tmux-navigator' " Seamless navigation between tmux panes and vim splits
Plug 'christoomey/vim-tmux-runner' " command runner for sending commands from vim to tmux.
Plug 'ctrlpvim/ctrlp.vim' " Fuzzy file, buffer, mru, tag, etc finder
Plug 'ervandew/supertab' " Perform all your vim insert mode completions with Tab
Plug 'fisadev/vim-isort' " Vim plugin to sort python imports
Plug 'godlygeek/tabular' " Align tabbed things
Plug 'janko-m/vim-test' " A Vim wrapper for running tests on different granularities
Plug 'machakann/vim-highlightedyank' " highlight what text was yanked
Plug 'mileszs/ack.vim' " Vim plugin for 'ack/ag'
Plug 'mxw/vim-jsx' " jsx syntax stuff
Plug 'nanotech/jellybeans.vim' " The best theme of all time
Plug 'pangloss/vim-javascript' " javascript highlighting
Plug 'plasticboy/vim-markdown' " markdown syntax highlighting
Plug 'prettier/vim-prettier', { 'do': 'yarn install' } " make all the syntax pretty
Plug 'rizzatti/dash.vim' " Search Dash.app from Vim
Plug 'rizzatti/funcoo.vim'
Plug 'rojobuffalo/vim-fubitive' " ryan's branch of vim-fubitive to work with SQSP bitbucket
Plug 'scrooloose/nerdtree' " A tree explorer plugin for vim.
Plug 'tpope/vim-commentary' " commentary.vim: comment stuff out
Plug 'tpope/vim-endwise' " endwise.vim: wisely add end in ruby, endfunction/endif/more in vim script, etc
Plug 'tpope/vim-fugitive' " fugitive.vim: A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-repeat' " repeat.vim: enable repeating supported plugin maps with .
Plug 'tpope/vim-rhubarb' " GitHub extension for fugitive.vim
Plug 'tpope/vim-sensible' " sensible.vim: Defaults everyone can agree on
Plug 'tpope/vim-surround' " surround.vim: quoting/parenthesizing made simple
Plug 'tpope/vim-unimpaired' " unimpaired.vim: Pairs of handy bracket mappings
Plug 'troydm/easybuffer.vim' " easybuffer.vim - vim plugin to quickly switch between buffers
Plug 'vim-airline/vim-airline' " lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/indentpython.vim' " An alternative indentation script for python
Plug 'vim-scripts/matchit.zip' " extended % matching for HTML, LaTeX, and many other languages
Plug 'w0rp/ale' " syntastic replacement
Plug 'wgibbs/vim-irblack' " just a colorscheme

call plug#end()

colorscheme jellybeans
set background=dark

syntax on

set colorcolumn=120
set expandtab
set history=1000
set incsearch
set inccommand=nosplit
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

" vim ale
let g:ale_linters_explicit = 1
let g:ale_python_auto_pipenv = 1
let g:ale_fix_on_save = 1

let g:ale_linters = {'python': ['flake8', 'pycodestyle', 'mypy']}

let g:ale_fixers = {'python': ['black', 'isort']}
let g:ale_python_black_options = "--line-length 120"

" let g:ale_python_flake8_auto_pipenv = 1
" let g:ale_python_pylint_auto_pipenv = 1
" let pipenv_venv_path = system('pipenv --venv')

" vim black
" let g:black_linelength = 120

" autocmd BufWritePre *.py execute ':ALEFix'

" Display extra whitespace
scriptencoding utf-8
set encoding=utf-8
set list listchars=tab:»·,trail:.

" Opn new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

"" Markdown stuff
au! BufRead,BufNewFile *.markdown set filetype=mkd
au! BufRead,BufNewFile *.md       set filetype=mkd

"" Fix backspace indent
set backspace=indent,eol,start

" Airline
let g:airline_theme = 'base16'

" Ack / Grep / CtrlP
let g:ackprg = 'ag --nogroup --nocolor --column'

set grepprg="ag --nocolor --nogroup --column"
let g:ag_prg="ag --nocolor --nogroup --column --ignore=tags"
let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching=0
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = { 'dir': '\v[\/](node_modules)|(\.(git|hg|svn))$', 'file': '\v\.(exe|so|dll|DS_STORE)$' }

" tmux
" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr><Paste>

" vim-tmux-runner python settings
let g:VtrStripLeadingWhitespace = 0
let g:VtrClearEmptyLines = 0
let g:VtrAppendNewline = 1

" Vim Tmux Runner - Connect Vim and tmux to allow running lines & commands
nnoremap <leader>v- :VtrOpenRunner { "orientation": "v" }<cr>
nnoremap <leader>v\ :VtrOpenRunner { "orientation": "h" }<cr>
nnoremap <leader>vk :VtrKillRunner<cr>
nnoremap <leader>va :VtrAttachToPane<cr>
nnoremap <leader>fr :VtrFocusRunner<cr>

vnoremap <leader>sc :VtrSendCommandToRunner<space>
nnoremap <leader>sl :VtrSendLinesToRunner<cr>

" vim-test
let test#strategy = "vtr"

" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" fugitive / rhubarb

source ~/.config/nvim/mappings.vim
