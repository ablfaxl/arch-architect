#!/bin/bash
progress "Generating SSH keys..."

ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -q -N ""
ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -q -N ""

progress "SSH keys generated."
