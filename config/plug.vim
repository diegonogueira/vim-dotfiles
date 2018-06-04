call plug#begin('~/.vim/plugged')

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'VundleVim/Vundle.vim'
Plug 'liuchengxu/vim-better-default'
Plug 'mileszs/ack.vim'
Plug 'bkad/CamelCaseMotion'
Plug 'Raimondi/delimitMate'
Plug 'michaeljsmith/vim-indent-object'
Plug 'mattn/emmet-vim'
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
Plug 'mg979/vim-visual-multi'
Plug 'w0rp/ale'
Plug 'brooth/far.vim'
Plug 'vim-scripts/CmdlineComplete'
Plug 'kana/vim-altr'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-mix-format'
Plug 'trevordmiller/nova-vim'
Plug 'diegonogueira/estilo-nova'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()
