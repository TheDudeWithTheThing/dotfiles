map <leader>n :NERDTreeToggle<CR>

" Quickly change quotes
vnoremap <leader>c' :s/"/'/g<CR>
vnoremap <leader>c" :s/'/"/g<CR>
nmap "" cs'"
nmap '' cs"'

vmap <leader>uu :!uniq<CR>
vmap <leader>ss :!sort -f<CR>
vmap <leader>sS :!sort<CR>
nmap <leader>sv :source $MYVIMRC<CR>
nmap <leader>se :Errors<CR>
nmap <leader>sc :lclose<CR>
nmap <leader>qc :ccl<CR>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Index ctags from any project, including those outside Rails
map <leader>ct :!ctags -R .<CR>

" Vim Dash
map <leader>d :Dash<CR>

" Vim Ag
map <leader>a :Ag<CR>

" yank to end
nnoremap Y y$

" Join lines and restore cursor location (J)
nnoremap J mjJ`j

" Clean up crap
" fix white space
map <leader>fws :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

nmap K :Ag "\b<C-R><C-W>\b"<CR>

" vim-rspec
map <Leader>rt :call RunCurrentSpecFile()<CR>
map <Leader>rs :call RunNearestSpec()<CR>
map <Leader>rl :call RunLastSpec()<CR>
map <Leader>ra :call RunAllSpecs()<CR>

" vim-rails
map <leader>rc :Econtroller<CR>
map <leader>rv :Eview<CR>
map <leader>rm :Emodel<CR>
map <leader>rf :RVfactory<CR>

" single quote word
map <leader>sqw ysiw'
" double quote word
map <leader>dqw ysiw"

nnoremap <leader>gr :Greview<cr>

map <leader>jb :colorscheme jellybeans<CR>

map <leader>fs mgggi# frozen_string_literal: true<ESC>'g

map <leader>b :EasyBuffer<CR>
