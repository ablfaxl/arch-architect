#!/bin/bash
progress "Setting up global git configuration..."

git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
git config --global core.editor "vim"
git config --global pull.rebase true

progress "Git configured."
