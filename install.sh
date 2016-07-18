#!/bin/bash

###############################################################################
# Description:
# 
# This script places the dotfiles found at
# https://github.com/hamez0r/dotfiles.git
# in their required locations.
# When this script has finish, in order to install all Vim's plugins,
# fire up Vim and run :PlugInstall
###############################################################################

# Create $HOME/.vim/autoload, including parents if they don't exist.
# In case of fresh install, they're most likely not there.

mkdir -p $HOME/.vim/autoload


# Copy vim-plug to ~/.vim/autoload
if [[ -f plug.vim ]]; then
    cp plug.vim $HOME/.vim/autoload
else
    echo "plug.vim file not found. vim-plug will not be available"
fi

if [[ -f .vimrc ]]; then
    cp .vimrc $HOME/
else
    echo ".vimrc file not found."
fi

if [[ -f .vimrc.bundles ]]; then
    cp .vimrc.bundles $HOME/
else
    echo ".vimrc.bundles file not found. You will be missing vim plugins"
fi

echo "Install completed. Open vim and run :PlugInstall"
