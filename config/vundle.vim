filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'                " ...unless we type a capital
Plugin 'ctrlpvim/ctrlp.vim'               " ...fuzzy
Plugin 'd11wtq/ctrlp_bdelete.vim'         " ...delete ctrlp buffer
Plugin 'tpope/vim-surround'               " ...parentheses, brackets, quotes, XML tags, and more
Plugin 'vim-airline/vim-airline'          " ...status bar improvements
Plugin 'Raimondi/delimitMate'             " ...auto-completion for quotes, parens, brackets, etc
Plugin 'scrooloose/nerdtree'              " ...tree navigation
Plugin 'scrooloose/nerdcommenter'         " ...commenter
Plugin 'Lokaltog/vim-easymotion'          " ...provides a much simpler way to use some motions in vim
Plugin 'godlygeek/tabular'                " ...tabulate and alignment
Plugin 'terryma/vim-multiple-cursors'     " ...Multiple Cursors
Plugin 'mileszs/ack.vim'                  " ...Run your favorite search tool from Vim, with an enhanced results list.
Plugin 'rizzatti/dash.vim'                " ...Dash app
Plugin 'tpope/vim-fugitive'               " ...Git
Plugin 'michaeljsmith/vim-indent-object'  " ...Indent selection
" Snippets
if v:version >= 704
  Plugin 'SirVer/ultisnips'
endif
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'                  " ...Emmet is a plugin for many popular text editors which greatly improves HTML & CSS workflow:
" Syntax
Plugin 'elixir-lang/vim-elixir'           " ...Elixir files
Plugin 'ekalinin/Dockerfile.vim'          " ...Docker file
Plugin 'slim-template/vim-slim.git'       " ...vim slim
Plugin 'mustache/vim-mustache-handlebars' " ...Mustache files
" Themes
Plugin 'diegonogueira/Zenburn'            " ...zenburn theme ( emacs ) :)
Plugin 'NLKNguyen/papercolor-theme'       "
Plugin 'altercation/vim-colors-solarized' " ...solorized theme

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Load plugin configs files
source ~/.vim.d/config/plugins/ctrlp.vim
source ~/.vim.d/config/plugins/ctrlp_bdelete.vim
source ~/.vim.d/config/plugins/easymotion.vim
source ~/.vim.d/config/plugins/nerdtree.vim
source ~/.vim.d/config/plugins/airline.vim
source ~/.vim.d/config/plugins/ack.vim
source ~/.vim.d/config/plugins/dash.vim
