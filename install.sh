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

# create symbol links
ln -sf vimrc.vim ~/.vimrc
ln -sf vim ~/.vim

# install vundle plugins
vim +PluginInstall +qall

# reload
source ~/.vimrc

echo 'Instaled!'
