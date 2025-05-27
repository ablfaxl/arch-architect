#!/bin/bash
progress "Installing Emacs and Doom Emacs..."

pacman -S --noconfirm emacs git
if [[ ! -d ~/.doom-emacs ]]; then
  git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.doom-emacs
  ~/.doom-emacs/bin/doom install
fi

progress "Emacs installed."
