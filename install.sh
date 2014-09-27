#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Set up config folder
mkdir -p ~/src
cd ~/src

# Clone zsh and emacs config repositories
git clone git@github.com:mroth23/oh-my-zsh.git
git clone git@github.com:mroth23/prelude.git

# Set up symlinks in home directory
cd ~
ln -s ./src/oh-my-zsh .oh-my-zsh
ln -s ./src/prelude .emacs.d

# Copy dotfiles
cp $DIR/zshrc ~/.zshrc
