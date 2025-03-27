#!/bin/bash

# Define variables
DOCKER_IMAGE="varun4546/final0"
DOCKER_TAG="latest"
CONTAINER_NAME="final"

echo "Stopping and removing any existing container..."
docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true

echo "Running new Docker container..."
docker run -d -p 8080:80 --name $CONTAINER_NAME $DOCKER_IMAGE:$DOCKER_TAG

echo "Deployment successful! Access your site at http://localhost:8080"
