#!/bin/bash

# The name prefix of images to delete
IMAGE_PREFIX="load-attorney"

# Step 1: Stop and remove all containers using images with the specified prefix
echo "Finding and stopping containers running images that start with: $IMAGE_PREFIX"
# Loop through all the images that start with the prefix and gather the container IDs that are using them
for image_id in $(docker images --filter "reference=${IMAGE_PREFIX}*" --format "{{.Repository}}:{{.Tag}}"); do
  container_ids=$(docker ps -a --filter "ancestor=${image_id}" --format "{{.ID}}")

  if [ -n "$container_ids" ]; then
    echo "Stopping and removing containers using image: $image_id"
    for container_id in $container_ids; do
      # Step 2: Stop the container
      echo "Stopping container with ID: $container_id"
      docker stop "$container_id" > /dev/null 2>&1

      # Step 3: Remove the container
      echo "Removing container with ID: $container_id"
      docker rm -f "$container_id" > /dev/null 2>&1 || echo "Failed to remove container $container_id"
    done
  else
    echo "No containers found running image: $image_id"
  fi
done

# Step 2: Find and force delete all images starting with the specified prefix
echo "Finding images with names starting with: $IMAGE_PREFIX"
image_ids=$(docker images --filter "reference=${IMAGE_PREFIX}*" --format "{{.ID}}")

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