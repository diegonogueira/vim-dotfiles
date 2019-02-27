" ===================
" ====== basic ======
" ===================

set list listchars=tab:\ \ ,trail:· " display tabs and trailing spaces visually
set gcr=a:blinkon0                  " disable cursor blink
autocmd BufWritePre * :%s/\s\+$//e  " auto trailing after save
set shiftwidth=2                    " Use indents of 2 spaces
set tabstop=2                       " An indentation every four columns
set softtabstop=2                   " Let backspace delete indent
set nostartofline
set nocursorline
set noshowcmd
set linespace=3
set nofixendofline

" http://vimhelp.appspot.com/change.txt.html#fo-table
au FileType * set fo-=c fo-=r fo-=o

" ===================
" ====== theme ======
" ===================

set background=dark    " set dark background
colorscheme nova      " set theme

if has('gui_running')
  set macligatures
  set guifont=Monaco:h16
endif

" ===================
" ====== maps =======
" ===================

" file
nnoremap <leader>fa :saveas %<TAB>
nnoremap <leader>fR :edit!<CR>
nnoremap <leader><Tab> :b#<CR>

" closes other windows
nnoremap <Leader>wm <C-W>o
nnoremap <Leader>w<Tab> <C-W>p

" cancel highlighting
nnoremap <silent> <Esc><Esc> :let @/=""<CR>

" copy and paste
" vmap <C-c> "+yi<ESC>
" vmap <C-x> "+c<ESC>
" vmap <C-v> c<ESC>"+p
" imap <C-v> <ESC>"+pa
" noremap Y y$
" vmap y ygv<Esc>

" unmap <leader>sc
