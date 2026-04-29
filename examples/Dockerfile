FROM debian:bookworm-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    curl unzip git binutils-arm-none-eabi ca-certificates && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /tmp
# Install Alire (Ada Package Manager)
RUN curl -fSL https://github.com/alire-project/alire/releases/download/v2.0.1/alr-2.0.1-bin-x86_64-linux.zip -o alr.zip && \
    unzip alr.zip && \
    mv bin/alr /usr/local/bin/ && \
    rm -rf alr.zip bin/ LICENSE.txt

# Alire requires user configuration to avoid interactive prompts
RUN alr settings --global --set user.name "Docker Builder" && \
    alr settings --global --set user.email "builder@example.com"

WORKDIR /workspace