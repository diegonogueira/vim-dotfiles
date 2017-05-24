call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'Lokaltog/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'terryma/vim-multiple-cursors'
Plug 'rizzatti/dash.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'chaoren/vim-wordmotion'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'janko-m/vim-test'
Plug 'elixir-lang/vim-elixir'
Plug 'kana/vim-altr'
Plug 'ekalinin/Dockerfile.vim'
Plug 'slim-template/vim-slim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'w0rp/ale'
Plug 'diegonogueira/Zenburn'
Plug 'NLKNguyen/papercolor-theme'
Plug 'altercation/vim-colors-solarized'
Plug 'trevordmiller/nova-vim'
Plug 'Yggdroot/indentLine'

call plug#end()

" === NerdThree ===

map <space>n :NERDTreeToggle<CR>
nmap <space>N :NERDTreeFind<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * wincmd l " move to left window
nmap <space>r :NERDTreeFocus<cr>R<c-w><c-p>

" === Airline ===

set laststatus=2

" === Dash ===

:nnoremap <silent> <space>dd :Dash<CR>
:nnoremap <space>df :Dash<Space>

" === EasyMotion ===

let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap <space>s <Plug>(easymotion-s2)
let g:EasyMotion_smartcase = 1
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" === Vim-test ===

nmap <silent> <space>tn :TestNearest<CR>
nmap <silent> <space>tf :TestFile<CR>
nmap <silent> <space>ta :TestSuite<CR>
nmap <silent> <space>tl :TestLast<CR>
nmap <silent> <space>tv :TestVisit<CR>
let test#filename_modifier = ":~"

" === Vim wordmotion ===

let g:wordmotion_mappings = {
  \ 'w' : ';',
  \ 'b' : '<M-b>',
  \ 'e' : '<M-e>',
  \ 'ge' : 'g<M-e>',
  \ 'aw' : 'a;',
  \ 'iw' : 'i;'
  \ }

" === Ack ===

let g:ackprg = 'ag --vimgrep --ignore-dir=public/uploads --ignore-dir=tmp --ignore-dir=log --ignore-dir=doc --ignore="*.sql"'

" === CtrlP ===

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_map = '\<space>pt'

set wildcharm=<Tab>
nnoremap <space>pp :CtrlP ~<Tab>
nnoremap <space>pf :CtrlP<cr>
nnoremap <space>pb :CtrlPBuffer<cr>
nnoremap <space>pc :CtrlPClearCache<cr>

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:ctrlp_prompt_mappings = {
  \ 'PrtDeleteEnt()': ['<c-@>']
  \ }

" === ALE ===

" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" === Altr ===

call altr#define('web/%/%.ex', 'test/%/%_test.exs', 'lib/%/%.ex')
nmap <space>tt  <Plug>(altr-forward)

" === Multiple cursors ===

nnoremap <silent> <C-a> :MultipleCursorsFind <C-R>/<CR>
vnoremap <silent> <C-a> :MultipleCursorsFind <C-R>/<CR>
