#!/bin/sh

# Check if Obsidian is already installed
if command -v obsidian > /dev/null 2>&1; then
    echo "Obsidian is already installed, skipping..."
    exit 0
fi

# install obsidian from flathub
flatpak install flathub md.obsidian.Obsidian