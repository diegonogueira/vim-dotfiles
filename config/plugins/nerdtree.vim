map ,n :NERDTreeToggle<CR>
nmap ,N :NERDTreeFind<CR>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" move to left window
autocmd VimEnter * wincmd l
