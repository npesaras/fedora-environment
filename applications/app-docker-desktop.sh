#!/bin/sh

# Check if Docker Desktop is already installed
if command -v docker-desktop > /dev/null 2>&1; then
    echo "Docker Desktop is already installed, skipping..."
    exit 0
fi

# install docker repository
sudo dnf config-manager addrepo --from-repofile https://download.docker.com/linux/fedora/docker-ce.repo

# install docker dependencies
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Install Docker Desktop via deb
cd /tmp

echo "Downloading Docker Desktop..."
curl -L --progress-bar 'https://desktop.docker.com/linux/main/amd64/docker-desktop-x86_64.rpm?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-linux-amd64' -o docker-desktop.rpm

# Check if download succeeded
if [ ! -f docker-desktop.rpm ] || [ ! -s docker-desktop.rpm ]; then
    echo "Error: Failed to download Docker Desktop"
    exit 1
fi

echo "Installing Docker Desktop..."
sudo dnf install -y ./docker-desktop.rpm

rm docker-desktop.rpm

cd -

systemctl --user start docker-desktop