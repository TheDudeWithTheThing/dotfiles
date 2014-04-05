map <leader>n :NERDTreeToggle<CR>

" Quickly change quotes
vnoremap <leader>c' :s/"/'/<CR>
vnoremap <leader>c" :s/'/"/<CR>
nmap "" cs'"
nmap '' cs"'

vmap <leader>ss :!sort -f<CR>
vmap <leader>sS :!sort<CR>
nmap <leader>sv :source $MYVIMRC<CR>
nmap <leader>se :Errors<CR>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Index ctags from any project, including those outside Rails
map <leader>ct :!ctags -R .<CR>

" Vim Dash
map <leader>d :Dash<CR>

" yank to end
nnoremap Y y$

" Clean up crap
" fix white space
map <leader>fws :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
" fix hash syntax
map <leader>fhs :%s/:\([^ ]*\)\(\s*\)=>/\1:/g<CR>

nmap <D-/> <Plug>CommentaryLine
vmap <D-/> <Plug>Commentary

map <D-f> :CtrlP<CR>
map <D-t> :CtrlPTag<CR>

" vim-rspec
map <Leader>rt :call RunCurrentSpecFile()<CR>
map <Leader>rs :call RunNearestSpec()<CR>
map <Leader>rl :call RunLastSpec()<CR>
map <Leader>ra :call RunAllSpecs()<CR>

" vim-rails
map <leader>rc :Econtroller<CR>
map <leader>rv :Eview<CR>
map <leader>rm :Emodel<CR>
map <leader>rf :Efactory<CR>
