" Zoom the tmux runner page
map <Leader>vz :VimuxZoomRunner<CR>

" Close vim tmux runner opened by VimuxRunCommand
map <Leader>vq :VimuxCloseRunner<CR>

" Open vim tmux runner
map <Leader>vv :VimuxTogglePane<CR>

function! TmuxToggleZoom()
  return system("tmux resize-pane -t 0 -Z")
endfunction

function! TmuxSetSize(size)
  return system("tmux resize-pane -t 1 -y " . a:size)
endfunction

noremap <silent> <C-h> :call TmuxToggleZoom()<CR>
noremap <silent> <C-j> :call TmuxSetSize(7)<CR>
noremap <silent> <C-k> :call TmuxSetSize(23)<CR>
