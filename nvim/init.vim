set nocompatible

let mapleader = "\\"

function! s:SourceConfigFilesIn(directory)
  let directory_splat = '~/.vim/' . a:directory . '/*'
  for config_file in split(glob(directory_splat), '\n')
    if filereadable(config_file)
      execute 'source' config_file
    endif
  endfor
endfunction

call plug#begin('~/.vim/plugged')

Plug 'bronson/vim-trailing-whitespace'
Plug 'christoomey/vim-system-copy'
Plug 'christoomey/vim-tmux-navigator'
Plug 'christoomey/vim-tmux-runner'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'janko-m/vim-test'
Plug 'nanotech/jellybeans.vim'
Plug 'rizzatti/dash.vim'
Plug 'rizzatti/funcoo.vim'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tell-k/vim-autopep8'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'troydm/easybuffer.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-scripts/matchit.zip'
Plug 'wgibbs/vim-irblack'

call s:SourceConfigFilesIn('plugs')

call plug#end()

colorscheme jellybeans
set background=dark

syntax on

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

" Display extra whitespace
scriptencoding utf-8
set encoding=utf-8
set list listchars=tab:»·,trail:.

" Opn new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

"" Fix backspace indent
set backspace=indent,eol,start

" Airline
let g:airline_theme = 'base16'

" Ack / Grep / CtrlP
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

nnoremap <leader>sq :VtrSendKeysRaw q<cr>
nnoremap <leader>sd :VtrSendKeysRaw ^D<cr>
nnoremap <leader>sl :VtrSendKeysRaw ^L<cr>
nnoremap <leader>sc :VtrSendKeysRaw ^C<cr>
nnoremap <leader>vs :VtrSendCommandToRunner<space>

" vim-test
let test#strategy = "vtr"

" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

source ~/.config/nvim/mappings.vim
