#!/bin/bash
set -e

IMAGE="YOUR_DOCKERHUB_USERNAME/YOUR_IMAGE_NAME:latest"
CONTAINER_NAME="sample-python"

# Pull the Docker image from Docker Hub
docker pull "$IMAGE"

# Remove an existing container with the same name, if present
if docker container inspect "$CONTAINER_NAME" >/dev/null 2>&1; then
    docker rm -f "$CONTAINER_NAME"
fi

# Run the Docker image as a container
docker run -d 
    --name "$CONTAINER_NAME" 
    -p 5000:5000 
    "$IMAGE"
