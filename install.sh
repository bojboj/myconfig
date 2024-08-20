#!/bin/bash

DOTFILES=$(pwd)

if [ -f "$HOME/.zshrc" ]; then
    rm "$HOME/.zshrc"
fi
ln -s "$DOTFILES/zshrc" "$HOME/.zshrc"

if [ -f "$HOME/.editorconfig" ]; then
    rm "$HOME/.editorconfig"
fi
ln -s "$DOTFILES/editorconfig" "$HOME/.editorconfig"

if [ -f "$HOME/.tmux.conf" ]; then
    rm "$HOME/.tmux.conf"
fi
ln -s "$DOTFILES/tmux.conf" "$HOME/.tmux.conf"

if [ -d "$HOME/.config/nvim" ]; then
    rm "$HOME/.config/nvim"
fi
ln -s "$DOTFILES/nvim" "$HOME/.config/nvim"
