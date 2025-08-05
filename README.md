
# Jupyter Notebook Dev Container Template

A ready-to-use [VS Code Dev Container](https://code.visualstudio.com/docs/devcontainers/containers) template for Python + Jupyter development.
Includes JupyterLab, classic Notebook, and common data science libraries (NumPy, Pandas, Matplotlib, ipywidgets).

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
    ````

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

4. **Start developing!**
   The container will automatically:

   * Install Python (version defined in [Dockerfile](Dockerfile))
   * Sync dependencies defined in [pyproject.toml](pyproject.toml) using **uv**
   * Start JupyterLab on port `8888`

---

## Connecting to Jupyter

The container automatically runs JupyterLab on **port 8888** with no token or password.

### Option A: Open Jupyter in your host browser

1. After the container starts, VS Code will forward port **8888** to your host.
2. Open [http://localhost:8888](http://localhost:8888) in your browser.
3. You should see JupyterLab running inside the dev container.

### Option B: Use Jupyter directly inside VS Code

1. Install the **Jupyter** extension (already included in `.devcontainer/devcontainer.json`).
2. Open any `.ipynb` notebook file in VS Code.
3. When prompted, select the **Python kernel** provided by the container (`.venv`).
4. Run cells inline with `Shift+Enter` or the play button.

---

## Dev Container Features

* **Python 3.12** with isolated `.venv` created by **uv**
* **JupyterLab + Notebook** with port forwarding (8888)
* **Preinstalled libraries**:

  * NumPy
  * Pandas
  * Matplotlib
  * ipywidgets
* **VS Code Extensions**:

  * [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
  * [Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance)
  * [Black Formatter](https://marketplace.visualstudio.com/items?itemName=ms-python.black-formatter)
  * [Ruff](https://marketplace.visualstudio.com/items?itemName=charliermarsh.ruff)
  * [Makefile Tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.makefile-tools)
  * [Jupyter](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter)
  * [Jupyter Keymap](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter-keymap)
  * [Jupyter Renderers](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter-renderers)

---

## License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

