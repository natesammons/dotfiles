#!/bin/bash

echo "Setup ~/.zshrc"
if [ -f $HOME/.zshrc  ]; then
  echo "  removing existing file"
  /bin/rm -f $HOME/.zshrc
fi

echo "  creating symlink"
ln -s ./.dotfiles/zshrc $HOME/.zshrc
