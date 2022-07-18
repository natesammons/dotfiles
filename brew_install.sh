#!/bin/bash

## install a bunch of brew packages
cd `dirname $0`
brew install `cat brew_packages.txt`

## create a ~/.fzf.zsh file
$(brew --prefix)/opt/fzf/install --no-update-rc --no-bash --all

## install some nice fonts
## or just get these 
#brew tap homebrew/cask-fonts
#brew cask install font-firacode-nerd-font
#brew cask install font-meslo-lg-nerd-font

