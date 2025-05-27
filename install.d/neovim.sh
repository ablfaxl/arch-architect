#!/bin/bash
progress "Installing Neovim and vim-plug..."

pacman -S --noconfirm neovim curl

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

progress "Neovim installed."
