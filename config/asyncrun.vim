augroup vimrc
	autocmd User AsyncRunStart call asyncrun#quickfix_toggle(8, 1)
augroup END

noremap <leader>ast :call asyncrun#quickfix_toggle(8)<cr>
noremap <leader>asM :botright copen 25<cr>
noremap <leader>asm :botright copen 8<cr>
