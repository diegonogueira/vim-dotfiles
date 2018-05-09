" nnoremap <leader>p <Nop>
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_mruf_relative = 1

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:ctrlp_prompt_mappings = {
  \ 'PrtDeleteEnt()': ['<c-@>']
  \ }

set wildcharm=<Tab>
nnoremap <leader>pp :CtrlP ~<Tab>
nnoremap <leader>pf :CtrlP<cr>
nnoremap <leader>pb :CtrlPBuffer<cr>
nnoremap <leader>pI :CtrlPClearCache<cr>
