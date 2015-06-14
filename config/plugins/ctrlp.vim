let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_map = ',t'

set wildcharm=<Tab>
nnoremap ,p :CtrlP ~<Tab>
nnoremap <silent> ,t :CtrlP<CR>
nnoremap <silent> ,b :CtrlPBuffer<cr>
nnoremap <silent> ,c :CtrlPClearCache<cr>

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
