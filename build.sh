
# Define variables
DOCKER_IMAGE="varun4546/final"
DOCKER_TAG="latest"

echo "Building Docker image..."
docker build -t $DOCKER_IMAGE:$DOCKER_TAG -f Dockerfile .

echo "Pushing Docker image to Docker Hub..."
docker push $DOCKER_IMAGE:$DOCKER_TAG

echo "Build process completed!"
