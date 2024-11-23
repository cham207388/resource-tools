#!/bin/bash
IMAGE_PREFIX="load-attorney"

# Step 1: Stop and remove all containers using images with the specified prefix
echo "Finding and stopping containers running images that start with: $IMAGE_PREFIX"
container_ids=$(docker ps -a --filter "ancestor=${IMAGE_PREFIX}" --format "{{.ID}}")

if [ -n "$container_ids" ]; then
  echo "Stopping and removing containers..."
  for container_id in $container_ids; do
    echo "Stopping container with ID: $container_id"
    docker stop "$container_id" > /dev/null 2>&1

    echo "Removing container with ID: $container_id"
    docker rm -f "$container_id" > /dev/null 2>&1 || echo "Failed to remove container $container_id"
  done
else
  echo "No containers found running images that start with: $IMAGE_PREFIX"
fi

# Step 2: Find and force delete all images starting with the specified prefix
echo "Finding images with names starting with: $IMAGE_PREFIX"
image_ids=$(docker images --format "{{.Repository}}:{{.Tag}} {{.ID}}" | awk -v prefix="$IMAGE_PREFIX" '$1 ~ "^"prefix {print $2}')

if [ -n "$image_ids" ]; then
  echo "Force deleting images..."
  for image_id in $image_ids; do
    echo "Force deleting Docker image with ID: $image_id"
    docker rmi -f "$image_id" > /dev/null 2>&1 || echo "Failed to delete image $image_id or image is still in use"
  done
else
  echo "No images found with names starting with: $IMAGE_PREFIX"
fi

# Step 3: Remove dangling volumes
echo "Removing dangling volumes..."
docker volume rm -f $(docker volume ls -f dangling=true -q) > /dev/null 2>&1 || echo "No dangling volumes found or failed to remove volumes."

# Step 4: Verify remaining containers and images
echo "Remaining running containers:"
docker ps -a

echo "Remaining images:"
docker images