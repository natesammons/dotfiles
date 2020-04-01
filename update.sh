cd $HOME
brew update
brew upgrade
brew cask upgrade
git -C ~/.oh-my-zsh pull
git -C ~/.oh-my-zsh/custom/themes/powerlevel10k pull
git -C ~/.vim/bundle/Vundle.vim pull
git -C ~/.dotfiles pull
zsh ~/.dotfiles/init.sh
vim +PluginUpdate +qall
