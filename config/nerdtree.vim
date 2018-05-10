noremap <leader>ft :NERDTreeToggle<CR>
noremap <leader>pt :NERDTreeFind<CR>

" https://vi.stackexchange.com/questions/13331/close-all-windows-except-the-current-one-and-nerdtree?rq=1
" function! OnlyAndNerdtree()
"     let currentWindowID = win_getid()
"
"     windo if win_getid() != currentWindowID && &filetype != 'nerdtree' | close | endif
"     wincmd w if win_getid() != currentWindowID
" endfunction
"
" command! Only call OnlyAndNerdtree()
"
" nnoremap <silent> <Leader>wm :Only<CR> " closes other windows
