augroup vimrc
	autocmd User AsyncRunStart call asyncrun#quickfix_toggle(8, 1)
augroup END

noremap <silent> ,to :call asyncrun#quickfix_toggle(8)<cr>
noremap <silent> ,tk :botright copen 25<cr><C-w>W
noremap <silent> ,tj :botright copen 8<cr><C-w>W
