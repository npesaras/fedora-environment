#!/bin/sh

# Check if Warp is already installed
if command -v warp-terminal > /dev/null 2>&1; then
    echo "Warp Terminal is already installed, skipping..."
    exit 0
fi

cd /tmp

curl -L --progress-bar https://app.warp.dev/download?package=rpm -o warp.rpm

sudo dnf install -y ./warp.rpm

rm -f warp.rpm

cd -