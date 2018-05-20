set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()
" Plugin 'VundleVim/Vundle.vim'

Plugin 'liuchengxu/vim-better-default'
Plugin 'mileszs/ack.vim'
Plugin 'bkad/CamelCaseMotion'
Plugin 'Raimondi/delimitMate'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'mattn/emmet-vim.git'
Plugin 'scrooloose/nerdcommenter.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'junegunn/fzf.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/vim-easy-align.git'
Plugin 'easymotion/vim-easymotion'
Plugin 'sheerun/vim-polyglot'
Plugin 'janko-m/vim-test'
Plugin 'skywind3000/asyncrun.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-multiple-cursors.git'
Plugin 'w0rp/ale'
Plugin 'thinca/vim-visualstar'
Plugin 'brooth/far.vim'
Plugin 'vim-scripts/CmdlineComplete'
Plugin 'kana/vim-altr'
Plugin 'tomtom/tlib_vim.git'
Plugin 'MarcWeber/vim-addon-mw-utils.git'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets.git'
Plugin 'itchyny/lightline.vim'
Plugin 'mhinz/vim-mix-format'
Plugin 'trevordmiller/nova-vim'
Plugin 'diegonogueira/estilo-nova'

call vundle#end()
filetype plugin indent on
