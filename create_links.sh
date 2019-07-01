#!/bin/bash

echo "Setup ~/.zshrc"
if [ -f $HOME/.zshrc  ]; then
  echo "  removing existing file"
  /bin/rm -f $HOME/.zshrc
fi

echo "  creating symlink"
ln -s ./.dotfiles/zshrc $HOME/.zshrc




echo "Setup ~/.vimrc"
if [ -f $HOME/.vimrc  ]; then
  echo "  removing existing file"
  /bin/rm -f $HOME/.vimrc
fi

echo "  creating symlink"
ln -s ./.dotfiles/vimrc $HOME/.vimrc
