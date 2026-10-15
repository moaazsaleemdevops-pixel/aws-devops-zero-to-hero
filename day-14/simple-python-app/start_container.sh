#!/bin/bash
set -e

IMAGE="moaazsaleem/simple-python-flask-app:latest"
CONTAINER_NAME="simple-python-flask-app"

docker pull "$IMAGE"

# Remove an old container if it still exists
if docker container inspect "$CONTAINER_NAME" >/dev/null 2>&1; then
    docker rm -f "$CONTAINER_NAME"
fi

# Start the container
docker run -d 
    --name "$CONTAINER_NAME" 
    -p 5000:5000 
    "$IMAGE"
