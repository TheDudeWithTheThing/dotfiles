map <leader>n :NERDTreeToggle<CR>

" Quickly change quotes
vnoremap <leader>c' :s/"/'/<CR>
vnoremap <leader>c" :s/'/"/<CR>
nmap "" cs'"
nmap '' cs"'

nmap <leader>f :CtrlP<CR>
vmap <leader>ss !sort -f<CR>
vmap <leader>sS !sort<CR>
nmap <leader>sv :source ~/.vimrc<CR>
