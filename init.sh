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


## run init.sh in other dirs
for dir in $HOME/.zsh.d $HOME/.zsh.d.$USER $HOME/.zsh.d.$(hostname -s); do
	if [[ -f $dir/init.sh ]]; then
		echo "Running init.sh in $dir"
		( cd $dir; zsh ./init.sh )
	fi
done

