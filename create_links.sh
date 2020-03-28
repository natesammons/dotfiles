#!/bin/zsh

cd $(dirname $0)

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


echo "Setup global gitignore"
git config --global core.excludesfile ~/.dotfiles/global.gitignore

