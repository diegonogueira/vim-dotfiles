nnoremap <silent> <leader>pf :Files<CR>
nnoremap <silent> <leader>pb :Buffers<CR>
nnoremap <silent> <leader>pr :History<CR>
nnoremap <leader>/ :GGrep<Space>

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

" git grep
command! -bang -nargs=* GGrep
            \ call fzf#vim#grep('git grep --color=always --line-number '.shellescape(<q-args>), 0, <bang>0)

" actions
let g:fzf_action = {
            \ 'ctrl-q': 'wall | bdelete',
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-s': 'split',
            \ 'ctrl-v': 'vsplit' }
