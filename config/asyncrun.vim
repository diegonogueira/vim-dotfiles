augroup vimrc
	autocmd User AsyncRunStart call asyncrun#quickfix_toggle(8, 1)
augroup END

noremap <silent> <leader>to :call asyncrun#quickfix_toggle(8)<cr>
noremap <silent> <leader>tk :botright copen 25<cr><C-w>W
noremap <silent> <leader>tj :botright copen 8<cr><C-w>W
