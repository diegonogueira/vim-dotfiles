set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
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
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/vim-easy-align.git'
Plugin 'easymotion/vim-easymotion'
Plugin 'sheerun/vim-polyglot'
Plugin 'janko-m/vim-test'
Plugin 'rizzatti/dash.vim'
Plugin 'kshenoy/vim-signature'
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
Plugin 'vim-airline/vim-airline'
Plugin 'trevordmiller/nova-vim'
Plugin 'mhinz/vim-mix-format'

call vundle#end()
filetype plugin indent on
