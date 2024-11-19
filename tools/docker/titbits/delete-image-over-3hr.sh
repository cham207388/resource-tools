#!/bin/bash

# Get the current timestamp
current_time=$(date +%s)

# Iterate over all images and filter those older than 3 hours and not in use
docker images --format "{{.ID}} {{.CreatedAt}}" | while read -r image_id created_at; do
  # Convert the created_at time to a timestamp using a cross-platform-compatible way
  if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS uses BSD date; use -j to not try to set date
    image_time=$(date -j -f "%Y-%m-%d %H:%M:%S %z" "$(echo "$created_at" | awk '{print $1, $2, $3, $4}')" +%s 2>/dev/null)
  else
    # GNU date (Linux)
    image_time=$(date --date="$created_at" +%s 2>/dev/null)
  fi

  # Skip processing if date conversion failed
  if [ -z "$image_time" ]; then
    echo "Skipping image $image_id due to date parsing issues"
    continue
  fi

  # Calculate the age of the image in hours
  age=$(( (current_time - image_time) / 3600 ))

  # If the image is older than 3 hours
  if [ "$age" -ge 3 ]; then
    # Check if the image is in use by any running container
    in_use=$(docker ps --filter "ancestor=$image_id" --format '{{.ID}}')

    # If the image is not being used by any running container, delete it
    if [ -z "$in_use" ]; then
      echo "Deleting unused Docker image $image_id (created $created_at)"
      docker rmi "$image_id" > /dev/null 2>&1 || echo "Skipping image $image_id, it may be in use or another error occurred"
    else
      echo "Skipping image $image_id because it is currently in use by running container"
    fi
  fi
done