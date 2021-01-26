cd $HOME

echo "Updating homebrew"
brew update
brew upgrade
brew upgrade --cask

echo "Updating OMZ, Powerlevel10K"
git -C ~/.oh-my-zsh pull
git -C ~/.oh-my-zsh/custom/themes/powerlevel10k pull

echo "Updating vim plugins"
git -C ~/.vim/bundle/Vundle.vim pull
vim +PluginUpdate +qall

echo "Updating dotfiles"
git -C ~/.dotfiles pull
zsh ~/.dotfiles/init.sh

## run update.sh in other dirs
for dir in $HOME/.zsh.d $HOME/.zsh.d.$USER $HOME/.zsh.d.$(hostname -s); do
	if [[ -f $dir/update.sh ]]; then
		echo "Running update.sh in $dir"
		( cd $dir; zsh ./update.sh )
	fi
done


