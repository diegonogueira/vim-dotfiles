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
ln -sf ~/.vim.d/vim ~/.vim

echo 'Instaled!'
