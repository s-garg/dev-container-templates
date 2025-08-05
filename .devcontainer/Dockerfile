# Python base image (Debian Bookworm)
FROM python:3.12-slim-bookworm

# Install common dev dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    sudo \
    git \
    make \
    curl \
    procps \
    && rm -rf /var/lib/apt/lists/*

# Create non-root vscode user with sudo
RUN useradd -ms /bin/bash vscode && \
    echo "vscode ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/vscode

# Get UV CLI
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# Switch to vscode user
USER vscode
WORKDIR /workspaces

# Expose Jupyter default port (so VS Code or browser can connect)
EXPOSE 8888
