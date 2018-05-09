" ===================
" ====== basic ======
" ===================

set list listchars=tab:\ \ ,trail:· " display tabs and trailing spaces visually
set gcr=a:blinkon0                  " disable cursor blink
autocmd BufWritePre * :%s/\s\+$//e  " auto trailing after save

" ===================
" ====== theme ======
" ===================

" for vim 8
if (has("termguicolors"))
  set termguicolors
endif

set background=dark    " set dark background
set guifont=Monaco:h15 " set font
colorscheme nova       " set theme

" ===================
" ====== maps =======
" ===================

" file
nnoremap <leader>fa :saveas %<TAB> " save file as
nnoremap <leader>fR :edit!<CR>     " reload the file
nnoremap <leader><Tab> :b#<CR>     " swap to last file

" window
nnoremap <Leader>wm <C-W>o " closes other windows

" highlighting
nnoremap <silent> <Esc><Esc> :let @/=""<CR> " Cancel highlighting

" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
noremap Y y$
