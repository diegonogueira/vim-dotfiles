" ===================
" ====== basic ======
" ===================

set runtimepath+=~/.vim.d/vim/ " load snippets
let mapleader="\<Space>"       " define mapleader as SPACE

" ============================
" ====== plugin manager ======
" ============================

source ~/.vim.d/config/vundle.vim " loads plugins
runtime! plugin/default.vim       " trick to override default settings from vim-better defaults

" =================================
" ====== load plugins config ======
" =================================

" plugins config
source ~/.vim.d/config/ctrlp.vim
source ~/.vim.d/config/camelcasemotion.vim
source ~/.vim.d/config/nerdcommenter.vim
source ~/.vim.d/config/nerdtree.vim
source ~/.vim.d/config/easymotion.vim
source ~/.vim.d/config/dash.vim
source ~/.vim.d/config/vim-multiple-cursors.vim
source ~/.vim.d/config/vim-test.vim
source ~/.vim.d/config/vim-visualstart.vim
source ~/.vim.d/config/easyalign.vim
source ~/.vim.d/config/colorizer.vim
source ~/.vim.d/config/vim-altr.vim

" vim config
source ~/.vim.d/config/editor.vim
