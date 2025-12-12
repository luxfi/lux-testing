# Lux Network E2E Testing Container
# Based on Kurtosis testing framework
FROM golang:1.23-alpine

RUN apk add --no-cache git bash curl jq docker-cli

WORKDIR /app

# Install kurtosis CLI
RUN curl -sSL https://raw.githubusercontent.com/kurtosis-tech/kurtosis-cli-release-artifacts/main/install.sh | bash

# Default entrypoint for testing
ENTRYPOINT ["/bin/bash"]
