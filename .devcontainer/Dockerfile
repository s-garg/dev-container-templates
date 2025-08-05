FROM debian:bookworm-slim

# Install NodeJS, NPM
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        nodejs \
        npm && \
    rm -rf /var/lib/apt/lists/*


# Install claude
RUN npm install -g @anthropic-ai/claude-code

# Create non-root user
ARG USERNAME=vscode
RUN useradd -ms /bin/bash ${USERNAME}

USER ${USERNAME}
WORKDIR /workspaces/dev-container-templates
