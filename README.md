# Python Dev Container Template

A ready-to-use [VS Code Dev Container](https://code.visualstudio.com/docs/devcontainers/containers) template for Python development.
Includes a simple FastAPI server example, configured VS Code extensions, and dependency management with [uv](https://github.com/astral-sh/uv).

---

## Quick Start

### Prerequisites

* [Visual Studio Code](https://code.visualstudio.com/)
* [Docker](https://www.docker.com/get-started)
* [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
* (Optional) [Dev Container CLI](https://code.visualstudio.com/docs/devcontainers/devcontainer-cli)

### Setup

1. **Clone this repository**

```bash
git clone <repository-url>
cd dev-container-templates
````

2. **Open in VS Code**

3. **Reopen in Container**

   **Option A: Command Palette**

   * Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on macOS)
   * Select **Dev Containers: Reopen in Container**
   * Wait for the container to build

   **Option B: Dev Container CLI**

   ```bash
   make ide
   ```

4. **Install dependencies**

   Inside the container:

   ```bash
   make setup
   ```

5. **Start developing!**
   The container will automatically:

   * Install Python (version defined in [Dockerfile](Dockerfile))
   * Configure recommended VS Code extensions
   * Forward port `8080` for the FastAPI server

---

## Running the Example Application

Inside the container:

```bash
make run
```

This will:

* Sync Python dependencies via `uv`
* Start the FastAPI server on port `8080`

Health check:

```bash
curl http://localhost:8080/health
```

Server will be available at [http://localhost:8080](http://localhost:8080).

---

## Makefile Commands

```bash
make ide     # Open project in Dev Container
make setup   # Install dependencies
make run     # Run the FastAPI server
```

---

## Dev Container Features

* **FastAPI server** with a `/health` endpoint ready to go.
* **uv** for fast dependency management.
* **VS Code Extensions**:

  * [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
  * [Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance)
  * [Black Formatter](https://marketplace.visualstudio.com/items?itemName=ms-python.black-formatter)
  * [Ruff Linter](https://marketplace.visualstudio.com/items?itemName=charliermarsh.ruff)
  * [Makefile Tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.makefile-tools)

---

## License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

