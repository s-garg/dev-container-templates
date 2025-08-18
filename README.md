# Go Dev Container Template

A ready-to-use [VS Code Dev Container](https://code.visualstudio.com/docs/devcontainers/containers) template for Go development.
Includes a simple HTTP server example, caching for faster builds, and recommended Go tools/extensions.

---

## Quick Start

### Prerequisites

* [Visual Studio Code](https://code.visualstudio.com/)
* [Docker](https://www.docker.com/get-started)
* [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

### Setup

1. **Clone this repository**

   ```bash
   git clone <repository-url>
   cd dev-container-templates
   ```

2. **Open in VS Code**

3. **Reopen in Container**

   **Option A: Command Palette**

   * Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on macOS)
   * Select **Dev Containers: Reopen in Container**
   * Wait for the container to build

   **Option B: Dev Container CLI**

   * Install the [Dev Container CLI](https://code.visualstudio.com/docs/devcontainers/devcontainer-cli)
   * Run:

     ```bash
     devcontainer open
     ```

   **Option C: Makefile shortcut**

   * Install the [Dev Container CLI](https://code.visualstudio.com/docs/devcontainers/devcontainer-cli)
   * Run:

     ```bash
     make ide
     ```

4. **Start developing!**
   The container will automatically:

   * Install Go (version defined in [Dockerfile](Dockerfile))
   * Configure Go tools and VS Code extensions
   * Forward port `8080` for the sample HTTP server
   * Persist the Go build cache for faster rebuilds

---

## Running the Example Application

Inside the container:

```bash
# Run with Go directly
go run main.go

# Or use the Makefile shortcut
make run

# Test the health endpoint
curl http://localhost:8080/health
```

The server will be available at [http://localhost:8080](http://localhost:8080)
(both inside and outside the container).

---

## Dev Container Features

* Base image: `mcr.microsoft.com/devcontainers/go:1-1.23-bookworm` (Debian 12)
* Non-root user: `vscode`
* Go toolchain with `gopls` and `goimports`; linting via `golangci-lint`
* VS Code extensions: [Go](https://marketplace.visualstudio.com/items?itemName=golang.Go), [golangci-lint](https://marketplace.visualstudio.com/items?itemName=golangci-lint)
* GitHub CLI installed via devcontainer feature (`gh` available)
* Port forwarding: `8080`
* Environment: `GOPATH=/go`, `GOCACHE=/home/vscode/.cache/go-build` (persistent between rebuilds)
* Post-create: runs `.devcontainer/setup.sh` (go mod download + tidy)
* Utilities: `make` installed

---

## License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.
