FROM debian:bookworm-slim

# Install JDK, curl, unzip
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        openjdk-17-jdk-headless \
        curl \
        unzip \
        ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# Install Gradle 8.4
RUN curl -sSL https://services.gradle.org/distributions/gradle-8.4-bin.zip -o gradle.zip && \
    unzip gradle.zip -d /opt && \
    mv /opt/gradle-8.4 /opt/gradle && \
    ln -s /opt/gradle/bin/gradle /usr/local/bin/gradle && \
    rm gradle.zip

# Create a universal JAVA_HOME symlink
RUN if [ -d /usr/lib/jvm/java-17-openjdk-amd64 ]; then \
      ln -s /usr/lib/jvm/java-17-openjdk-amd64 /usr/lib/jvm/java-17-openjdk; \
    elif [ -d /usr/lib/jvm/java-17-openjdk-arm64 ]; then \
      ln -s /usr/lib/jvm/java-17-openjdk-arm64 /usr/lib/jvm/java-17-openjdk; \
    else \
      echo "No supported JDK installation found" && exit 1; \
    fi

# Set environment variables (arch-agnostic)
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk
ENV PATH="${JAVA_HOME}/bin:${PATH}"

# Create non-root user
ARG USERNAME=vscode
RUN useradd -ms /bin/bash ${USERNAME}

USER ${USERNAME}
WORKDIR /workspaces/dev-container-templates
