call plug#begin('~/.vim/plugged')

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'liuchengxu/vim-better-default'
Plug 'mileszs/ack.vim'
Plug 'bkad/CamelCaseMotion'
Plug 'Raimondi/delimitMate'
" Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion'
Plug 'sheerun/vim-polyglot'
Plug 'janko-m/vim-test'
Plug 'skywind3000/asyncrun.vim'
Plug 'rizzatti/dash.vim'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi', { 'branch': 'test' }
Plug 'thinca/vim-visualstar'
Plug 'tpope/vim-repeat'
Plug 'svermeulen/vim-easyclip'
" Plug 'w0rp/ale'
Plug 'brooth/far.vim'
Plug 'vim-scripts/CmdlineComplete'
Plug 'kana/vim-altr'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-mix-format'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Vim textobj user
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'sgur/vim-textobj-parameter'
Plug 'vim-scripts/matchit.zip'
Plug 'adriaanzon/vim-textobj-matchit'

" Themes
Plug 'trevordmiller/nova-vim'
Plug 'diegonogueira/estilo-nova'
Plug 'dracula/vim'

call plug#end()
