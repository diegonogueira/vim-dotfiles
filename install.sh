#!/bin/sh

# backup
if [ -d "$HOME/.vimrc" ]; then
  mv ~/.vimrc ~/.vimrc.backup
  echo '~/.vimrc.backup created'
fi

if [ -d "$HOME/.vim" ]; then
  mv ~/.vim ~/.vim.backup
  echo '~/.vim.backup created'
fi

# clone the repository
git clone git@github.com:diegonogueira/vim-dotfiles.git .vim.d

# create symbol links
ln -sf ~/.vim.d/vimrc.vim ~/.vimrc
mkdir -p ~/.vim/bundle

# clone vundle plugin
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install all plugins
vim +PluginInstall +qall

echo 'Instaled!'
