map <leader>n :NERDTreeToggle<CR>

" Quickly change quotes
vnoremap <leader>c' :s/"/'/<CR>
vnoremap <leader>c" :s/'/"/<CR>
nmap "" cs'"
nmap '' cs"'

nmap <D-f> :CtrlP<CR>
vmap <leader>ss !sort -f<CR>
vmap <leader>sS !sort<CR>
nmap <leader>sv :source ~/.vimrc<CR>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Index ctags from any project, including those outside Rails
map <Leader>ct :!ctags -R .<CR>
