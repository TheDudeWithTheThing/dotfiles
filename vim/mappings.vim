map <leader>n :NERDTreeToggle<CR>

" Quickly change quotes
vnoremap <leader>c' :s/"/'/<CR>
vnoremap <leader>c" :s/'/"/<CR>
nmap "" cs'"
nmap '' cs"'

vmap <leader>ss :!sort -f<CR>
vmap <leader>sS :!sort<CR>
nmap <leader>sv :source $MYVIMRC<CR>

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

" Load NERDTree at startup and move the cursor to the main window
 autocmd VimEnter * NERDTree
 autocmd VimEnter * wincmd l

" Show hidden files in NERDTree
" let NERDTreeShowHidden = 1
