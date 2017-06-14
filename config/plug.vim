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
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'altercation/vim-colors-solarized'
" Plug 'trevordmiller/nova-vim'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'takac/vim-hardtime'

call plug#end()

" === NerdThree ===

map <leader>n :NERDTreeToggle<CR>
nmap <leader>N :NERDTreeFind<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * wincmd l " move to left window
"nmap <leader>r :NERDTreeFocus<cr>R<c-w><c-p>

" === Airline ===

set laststatus=2

" === Dash ===

:nnoremap <silent> <leader>dd :Dash<CR>
:nnoremap <leader>df :Dash<leader>

" === EasyMotion ===

let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1
map <leader>; <Plug>(easymotion-s2)
" Move to word
map  <Leader>[ <Plug>(easymotion-bd-w)
nmap <Leader>[ <Plug>(easymotion-overwin-w)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" === Vim-test ===

"line
nmap <silent> <leader>tl :TestNearest<CR>
"buffer
nmap <silent> <leader>tb :TestFile<CR>
"all
nmap <silent> <leader>ta :TestSuite<CR>
"last
nmap <silent> <leader>t. :TestLast<CR>
"visit
nmap <silent> <leader>tv :TestVisit<CR>
let test#filename_modifier = ":~"
" let test#strategy = "basic"
let test#strategy = "iterm"

" === Vim wordmotion ===

let g:wordmotion_mappings = {
  \ 'w' : '<leader>w',
  \ 'b' : '<leader>b',
  \ 'e' : '<leader>e',
  \ 'ge' : '<leader>ge',
  \ 'aw' : 'a<space>w',
  \ 'iw' : 'i<space>w'
  \ }

" === Ack ===

let g:ackprg = 'ag --vimgrep --ignore-dir=public/uploads --ignore-dir=tmp --ignore-dir=log --ignore-dir=doc --ignore="*.sql"'

" === CtrlP ===

nnoremap <leader>p <Nop>
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_map = '\<leader>pf'

set wildcharm=<Tab>
nnoremap <leader>pp :CtrlP ~<Tab>
nnoremap <leader>pf :CtrlP<cr>
nnoremap <leader>pb :CtrlPBuffer<cr>
nnoremap <leader>pc :CtrlPClearCache<cr>

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
nmap <leader>tt  <Plug>(altr-forward)

" === Multiple cursors ===

nnoremap <silent> <C-a> :MultipleCursorsFind <C-R>/<CR>
vnoremap <silent> <C-a> :MultipleCursorsFind <C-R>/<CR>

" === Gitgutter ===

set updatetime=250
"let g:gitgutter_sign_column_always = 1

" === Vim bookmark ===

nmap <leader>mm <Plug>BookmarkToggle
nmap <leader>mi <Plug>BookmarkAnnotate
nmap <leader>ma <Plug>BookmarkShowAll
nmap <leader>mj <Plug>BookmarkNext
nmap <leader>mk <Plug>BookmarkPrev
nmap <leader>mc <Plug>BookmarkClear
nmap <leader>mx <Plug>BookmarkClearAll
nmap <leader>mkk <Plug>BookmarkMoveUp
nmap <leader>mjj <Plug>BookmarkMoveDown
nmap <leader>mg <Plug>BookmarkMoveToLine

" === Vim hardtime ===

" let g:hardtime_default_on = 1
" let g:hardtime_allow_different_key = 1

" === Nerd commenter ===

let g:NERDSpaceDelims = 1
