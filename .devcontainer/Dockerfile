# Go base image (Debian Bookworm)
FROM golang:1.24.5-bookworm

# Install common dev dependencies
RUN apt-get update && \
    apt-get -y install --no-install-recommends \
    sudo \
    git \
    make && \
    rm -rf /var/lib/apt/lists/*

# Create non-root vscode user with sudo
RUN useradd -ms /bin/bash vscode && \
    echo "vscode ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/vscode

# Fix Go build cache permissions
RUN mkdir -p /home/vscode/.cache/go-build && \
    chown -R vscode:vscode /home/vscode/.cache

# Switch to vscode user
USER vscode
WORKDIR /workspaces
