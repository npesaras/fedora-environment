#!/bin/sh

if command -v lazygit > /dev/null 2>&1; then
    echo "lazygit is already installed, skipping..."
    exit 0
fi

sudo dnf copr enable dejan/lazygit
sudo dnf install lazygit