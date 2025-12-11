#!/bin/sh

# Check if Chrome is already installed
if command -v google-chrome > /dev/null 2>&1; then
    echo "Google Chrome is already installed, skipping..."
    exit 0
fi

# enable chrome repository
sudo dnf config-manager setopt google-chrome.enabled=1

# install Google Chrome
sudo dnf install google-chrome-stable