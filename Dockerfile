# Use a base image with CUDA
FROM nvidia/cuda:12.2.0-runtime-ubuntu22.04

# Install necessary software
RUN apt-get update && apt-get install -y \
    neovim \
    wget \
    git \
    python3 \
    python3-venv \
    libgl1 \
    libglib2.0-0 \
    google-perftools \
    sudo \
    && rm -rf /var/lib/apt/lists/*

# Create a user 'user' with no password
RUN useradd -m user && \
    echo "user ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/user

# Set working directory to 'user's home directory
WORKDIR /home/user

# Copy installation
COPY files/install.sh /install.sh

# Make installation
RUN chmod +x /install.sh

# Expose port 7860
EXPOSE 7860

# Switch to user "user"
USER user

# Optional: Set default command or entrypoint
CMD ["/bin/bash"]

