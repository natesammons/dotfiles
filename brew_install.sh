#!/bin/bash

cd `dirname $0`
brew install `cat brew_packages.txt`

brew tap homebrew/cask-fonts
brew cask install font-firacode-nerd-font

## create a ~/.fzf.zsh file
$(brew --prefix)/opt/fzf/install --no-update-rc --no-bash --all

