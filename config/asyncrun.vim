augroup vimrc
	autocmd User AsyncRunStart call asyncrun#quickfix_toggle(8, 1)
augroup END

noremap <silent> <C-h> :call asyncrun#quickfix_toggle(8)<cr>
noremap <silent> <C-k> :botright copen 25<cr><C-w>W
noremap <silent> <C-j> :botright copen 8<cr><C-w>W
