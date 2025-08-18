# Go base image (Debian Bookworm)
FROM mcr.microsoft.com/devcontainers/go:1-1.23-bookworm

# Install common dev dependencies
RUN apt-get update && \
    apt-get -y install --no-install-recommends \
    make && \
    rm -rf /var/lib/apt/lists/*

# Switch to vscode user
USER vscode
