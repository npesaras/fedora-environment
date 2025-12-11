#!/bin/sh

# Set NVM directory
export NVM_DIR="${NVM_DIR:-$HOME/.nvm}"

# Check if NVM is already installed by checking the directory
if [ -d "$NVM_DIR" ] && [ -s "$NVM_DIR/nvm.sh" ]; then
    echo "Node Version Manager (NVM) is already installed, skipping..."
else
    # Install NVM (Node Version Manager)
    echo "Installing NVM..."

    # Download and install NVM
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
fi

# Load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion