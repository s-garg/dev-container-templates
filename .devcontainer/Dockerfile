# Use the official Go 1.24.5 image based on Debian Bookworm as the base
FROM golang:1.24.5-bookworm

# Update package lists and install system dependencies:
# - Reinstall ca-certificates to ensure SSL works
# - Install sudo for privilege escalation
# - Install software-properties-common for repo management
# - Install git for source control
RUN apt-get update && \
    apt-get -y install --reinstall ca-certificates && \
    apt-get -y install sudo \
    software-properties-common \
    git \
    make

# Set environment variables for the new non-root user
ENV USER_NAME vscode
ENV USER_PASSWORD password

# Create a new user with bash as the shell, disabled password initially
RUN adduser --quiet --disabled-password --shell /bin/bash --home /home/$USER_NAME --gecos "User" $USER_NAME

# Set password for the new user and add them to the sudo group
RUN echo "${USER_NAME}:${USER_PASSWORD}" | chpasswd && usermod -aG sudo $USER_NAME

# Configure passwordless sudo for the new user
RUN echo $USER_NAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USER_NAME && chmod 0440 /etc/sudoers.d/$USER_NAME

# Set HOME env variable for the new user
ENV HOME /home/$USER_NAME

# Switch to the non-root user
USER $USER_NAME

# Set working directory to the user's home directory
WORKDIR /home/$USER_NAME
