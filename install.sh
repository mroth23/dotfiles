#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Set up config folder
echo "Setting up config folder..."
mkdir -p ~/src && cd ~/src

# Clone zsh and emacs config repositories
echo "Cloning emacs-prelude and oh-my-zsh..."
git clone git@github.com:mroth23/oh-my-zsh.git
git clone git@github.com:mroth23/prelude.git

# Set up symlinks in home directory
echo "Setting up symlinks in ~..."
cd ~
ln -s ./src/oh-my-zsh .oh-my-zsh
ln -s ./src/prelude .emacs.d
ln -s $DIR/zshrc .zshrc
ln -s $DIR/gitconfig .gitconfig

echo "Done!"
