#!/bin/bash
progress "Installing tmux and TPM (Tmux Plugin Manager)..."

pacman -S --noconfirm tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

progress "tmux installed."
