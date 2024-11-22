resource "null_resource" "delete_docker_image" {
  triggers = {
    always_run = timestamp()
  }

  provisioner "local-exec" {
    command = <<EOT
      #!/bin/bash

      # The name of the image to delete (e.g., "load-attorney")
      IMAGE_NAME="load-attorney"

      # Step 1: Find the running container(s) using the image
      container_ids=$(docker ps -a --filter "ancestor=${IMAGE_NAME}" --format "{{.ID}}")

      if [ -n "$container_ids" ]; then
        echo "Stopping and removing containers running the image: $IMAGE_NAME"
        for container_id in $container_ids; do
          # Step 2: Stop the container
          echo "Stopping container with ID: $container_id"
          docker stop "$container_id" > /dev/null 2>&1

          # Step 3: Wait until the container is fully stopped
          echo "Waiting for container $container_id to stop..."
          while docker ps --format "{{.ID}}" | grep -q "$container_id"; do
            sleep 1
          done

          # Step 4: Remove the container
          echo "Removing container with ID: $container_id"
          docker rm "$container_id" > /dev/null 2>&1 || echo "Failed to remove container $container_id"
        done
      else
        echo "No containers found running the image: $IMAGE_NAME"
      fi

      # Step 5: Remove the Docker image
      echo "Removing Docker image: $IMAGE_NAME"
      docker rmi "$IMAGE_NAME" > /dev/null 2>&1 || echo "Failed to delete image $IMAGE_NAME or image is in use"
    EOT
  }
}