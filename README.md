# Java Dev Container Template

A ready-to-use [VS Code Dev Container](https://code.visualstudio.com/docs/devcontainers/containers) template for Java development.
Includes a simple Spring Boot HTTP server example, Gradle build support, and recommended Java tools/extensions.

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

   * Install Java (version defined in [Dockerfile](Dockerfile))
   * Configure Gradle and VS Code extensions
   * Forward port `8080` for the sample Spring Boot server

---

## Running the Example Application

Inside the container:

```bash
# Build and run the app
./gradlew bootRun

# Test the health endpoint
curl http://localhost:8080/health
```

The server will be available at [http://localhost:8080](http://localhost:8080)
(both inside and outside the container).

---

## Dev Container Features

* **Java toolchain** with OpenJDK + Gradle preconfigured.

* **VS Code Extensions**:

  * [Java Extension Pack](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack)
  * [Java Test Runner](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-test)
  * [Spring Boot Extension Pack](https://marketplace.visualstudio.com/items?itemName=pivotal.vscode-spring-boot)

---

## License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.
