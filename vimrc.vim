" ===================
" ====== basic ======
" ===================

set runtimepath+=~/.vim.d/vim/ " load snippets
nnoremap <space> <Nop>
map <space> <leader>

" ============================
" ====== plugin manager ======
" ============================

source ~/.vim.d/config/vundle.vim " loads plugins
runtime! plugin/default.vim       " trick to override default settings from vim-better defaults

" =================================
" ====== load plugins config ======
" =================================

" plugins config
source ~/.vim.d/config/vim-fzf.vim
source ~/.vim.d/config/camelcasemotion.vim
source ~/.vim.d/config/nerdcommenter.vim
source ~/.vim.d/config/nerdtree.vim
source ~/.vim.d/config/easymotion.vim
source ~/.vim.d/config/dash.vim
source ~/.vim.d/config/vim-multiple-cursors.vim
source ~/.vim.d/config/vim-test.vim
source ~/.vim.d/config/vim-visualstart.vim
source ~/.vim.d/config/vim-airline.vim
source ~/.vim.d/config/vim-gitgutter.vim
source ~/.vim.d/config/easyalign.vim
source ~/.vim.d/config/colorizer.vim
source ~/.vim.d/config/vim-altr.vim
source ~/.vim.d/config/ale.vim
source ~/.vim.d/config/vim-mix-format.vim

" vim config
source ~/.vim.d/config/editor.vim
