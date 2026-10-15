#!/bin/bash
set -e

CONTAINER_NAME="sample-python"

# Stop and remove the container if it exists
if docker container inspect "$CONTAINER_NAME" >/dev/null 2>&1; then
    docker rm -f "$CONTAINER_NAME"
else
    echo "Container is not running; nothing to stop."
fi
