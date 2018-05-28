augroup vimrc
	autocmd User AsyncRunStart call asyncrun#quickfix_toggle(8, 1)
augroup END

noremap <silent> <leader>ast :call asyncrun#quickfix_toggle(8)<cr>
noremap <silent> <leader>ask :botright copen 25<cr>
noremap <silent> <leader>asj :botright copen 8<cr>
