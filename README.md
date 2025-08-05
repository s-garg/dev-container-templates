
# Dev Container Templates

Opinionated templates for consistent dev environments using **Dev Containers** (VS Code or GitHub Codespaces). Each branch targets a specific stack with sensible defaults—ideal for reproducible development.

---

## Why Dev Containers?

A **Dev Container** is a Docker container preconfigured with tools, runtimes, and shell settings. It delivers:

* Zero setup: clone + open in container, no local installs
* Consistency across platforms and team members
* Isolation from host environment—clean, reproducible workspace
* Easy onboarding — works the same in Codespaces and VS Code

Dev Containers eliminate the *“works on my machine”* issue.

---

## Branches / Templates

| Branch | Description | Build Status |
|--------|-------------|--------------|
| [go](https://github.com/s-garg/dev-container-templates/tree/go) | Go development environment | ![Build](https://github.com/s-garg/dev-container-templates/actions/workflows/devcontainer.yaml/badge.svg?branch=go) |
| [java](https://github.com/s-garg/dev-container-templates/tree/java) | Java development environment with Spring Boot | ![Build](https://github.com/s-garg/dev-container-templates/actions/workflows/devcontainer.yaml/badge.svg?branch=java) |
| [python](https://github.com/s-garg/dev-container-templates/tree/python) | Python 3 development environment with uv and FastAPI | ![Build](https://github.com/s-garg/dev-container-templates/actions/workflows/devcontainer.yaml/badge.svg?branch=python) |
| [notebook](https://github.com/s-garg/dev-container-templates/tree/notebook) | Jupyter Notebook / Data Science environment | ![Build](https://github.com/s-garg/dev-container-templates/actions/workflows/devcontainer.yaml/badge.svg?branch=notebook) |
| [claude](https://github.com/s-garg/dev-container-templates/tree/claude) | Dev container with Claude for VS Code preinstalled | ![Build](https://github.com/s-garg/dev-container-templates/actions/workflows/devcontainer.yaml/badge.svg?branch=claude) |
| [zsh](https://github.com/s-garg/dev-container-templates/tree/zsh) | zsh with oh‑my‑zsh and useful plugins | ![Build](https://github.com/s-garg/dev-container-templates/actions/workflows/devcontainer.yaml/badge.svg?branch=zsh) |

The [claude](https://github.com/s-garg/dev-container-templates/tree/claude) and [zsh](https://github.com/s-garg/dev-container-templates/tree/zsh) templates can be combined with any of the language environments above for an enhanced development experience.

---

## Features

* Preconfigured environments for Go, Java, Python, Jupyter, Claude, and zsh
* Based on lightweight Debian images
* Non-root `vscode` user for safer defaults
* Custom VS Code settings baked in via `devcontainer.json`
* Shell customization with **zsh** and plugins (where relevant)

---

## Structure

Each branch contains a full `.devcontainer/` setup and `Dockerfile`, customized for that environment.

Common features include:

* Non-root user (`vscode`)
* Custom VS Code settings in `devcontainer.json`

---

## Quick Start

```bash
git clone https://github.com/s-garg/dev-container-templates.git
cd dev-container-templates
git checkout <branch>   # e.g., python, go, zsh, notebook, etc.
code .                  # open repo in VS Code
# then run "Dev Containers: Reopen in Container"
```

> 💡 If you have the [Dev Containers CLI](https://github.com/devcontainers/cli) installed, you can also use:
>
> ```bash
> devcontainer open
> ```

---

## License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for full details.
