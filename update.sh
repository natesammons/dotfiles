cd $HOME

echo "Updating homebrew"
brew update
brew upgrade
brew cask upgrade

echo "Updating OMZ, Powerlevel10K"
git -C ~/.oh-my-zsh pull
git -C ~/.oh-my-zsh/custom/themes/powerlevel10k pull

echo "Updating vim plugins"
git -C ~/.vim/bundle/Vundle.vim pull
vim +PluginUpdate +qall

echo "Updating dotfiles"
git -C ~/.dotfiles pull
zsh ~/.dotfiles/init.sh
