#!/bin/bash
set -e

CONTAINER_NAME="simple-python-flask-app"

if docker container inspect "$CONTAINER_NAME" >/dev/null 2>&1; then
    docker rm -f "$CONTAINER_NAME"
else
    echo "Container does not exist; nothing to stop."
fi
