# Docker-Compose Dev Container Template

A ready-to-use [VS Code Dev Container](https://code.visualstudio.com/docs/devcontainers/containers) template that demonstrates **Docker Compose** for local development.

It runs your app and dependencies (**FastAPI**, **PostgreSQL**, **Redis**) as connected services, making it easy to:

* Spin up databases and caches without installing them locally.
* Test integrations against real services.
* Reset the environment quickly by tearing down and rebuilding.

All services are defined in `.devcontainer/docker-compose.yml` and start automatically when the project is opened in a Dev Container.

---

## Quick Start

### Prerequisites

* [Visual Studio Code](https://code.visualstudio.com/)
* [Docker](https://www.docker.com/get-started)
* [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

---

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
   The dev container will:

   * Install Python into a `.venv` inside the container
   * Configure VS Code with Python, linting, and formatting extensions
   * Start Postgres and Redis services (via `.devcontainer/docker-compose.yml`)
   * Forward port `8080` for the FastAPI app

---

## Running the Example Application

Inside the container:

```bash
# Run the FastAPI app directly
uvicorn main:app --host 0.0.0.0 --port 8080 --reload

# Or use the Makefile shortcut
make run

# Test the health endpoint
curl http://localhost:8080/health
```

The server will be available at [http://localhost:8080](http://localhost:8080)
(both inside and outside the container).

---

## Project Structure

```
.
├── .devcontainer/        # Dev container setup
│   ├── devcontainer.json # VS Code Dev Container config
│   ├── docker-compose.yml# App + Postgres + Redis services
│   ├── Dockerfile        # App container definition
│   └── setup.sh          # Post-create setup script
├── Makefile              # Useful shortcuts (ide, run, setup, etc.)
├── pyproject.toml        # Python dependencies (FastAPI, SQLAlchemy, Redis)
├── main.py               # Sample FastAPI app
└── README.md             # This file
```

---

## Dev Container Features

* **Python toolchain** with Black, Ruff, pytest, and Pylance.
* **VS Code Extensions** preinstalled for Python development.
* **Databases & Cache** ready:

  * PostgreSQL (`sqlalchemy`, `psycopg2-binary`)
  * Redis (`redis-py`)
* **Service orchestration** with Docker Compose.

---

## License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

