#!/bin/bash
progress "Installing Docker and Docker Compose..."

pacman -S --noconfirm docker docker-compose
systemctl enable docker.service
systemctl start docker.service

progress "Docker installed and started."
