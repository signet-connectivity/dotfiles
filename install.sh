#!/usr/bin/env sh

if [ ! -f "$HOME/.gitignore_global" ]; then
    echo "Configuring .gitignore_global..."

    ln -s $(pwd)/.gitignore_global $HOME/.gitignore_global
    git config --global core.excludesfile $HOME/.gitignore_global
fi
