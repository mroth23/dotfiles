#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Set up config folder
echo "Setting up config folder..."
mkdir -p ~/src && cd ~/src

# Clone zsh and emacs config repositories
echo "Cloning emacs-prelude and antigen..."
git clone git@github.com:mroth23/prelude.git
git clone https://github.com/zsh-users/antigen.git

# Set up symlinks in home directory
echo "Setting up symlinks in ~..."
cd ~
ln -s ./src/prelude .emacs.d
ln -s $DIR/antigenrc .antigenrc
ln -s $DIR/zshrc .zshrc
ln -s $DIR/zshenv .zshenv
ln -s $DIR/gitconfig .gitconfig

echo "Done!"
