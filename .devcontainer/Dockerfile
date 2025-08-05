FROM debian:bookworm-slim

# Install dependencies and cleanup
RUN apt-get update && apt-get install -y \
    wget \
    git \
    zsh \
 && rm -rf /var/lib/apt/lists/*

# Create non-root user
ARG USERNAME=vscode
RUN useradd -ms /bin/bash ${USERNAME}

USER ${USERNAME}
WORKDIR /workspaces/dev-container-templates

ENV TERM=xterm \
    SHELL=/bin/zsh

# Install oh-my-zsh and plugins
RUN wget -qO- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | zsh || true \
 && git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions \
 && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting \
 && git clone https://github.com/zsh-users/zsh-completions.git ~/.oh-my-zsh/custom/plugins/zsh-completions \
 && git clone https://github.com/zsh-users/zsh-history-substring-search.git ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search \
 && echo "source ~/.oh-my-zsh/oh-my-zsh.sh" >> ~/.zshrc \
 && echo "plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-completions zsh-history-substring-search)" >> ~/.zshrc \
 && echo "export PATH=\$PATH:/usr/local/bin" >> ~/.zshrc \
 && echo "alias ll='ls -la'" >> ~/.zshrc
