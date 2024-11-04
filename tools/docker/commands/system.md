# Docker System Commands

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `docker system prune` | Removes all unused data (containers, networks, images, and optionally volumes). | `docker system prune`<br>`docker system prune -a`<br>`docker system prune --volumes` |
| `docker system df` | Displays disk usage of images, containers, and volumes. | `docker system df`<br>`docker system df -v`<br>`docker system df --format "{{.Type}}: {{.Size}}"` |

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `docker login` | Logs in to a Docker registry. | `docker login`<br>`docker login --username myuser --password mypassword`<br>`docker login myregistry.com` |
| `docker logout` | Logs out from a Docker registry. | `docker logout`<br>`docker logout myregistry.com`<br>`docker logout --help` |
| `docker inspect` | Returns low-level information about Docker objects. | `docker inspect container_id`<br>`docker inspect image_id`<br>`docker inspect volume_name` |
| `docker logs` | Fetches logs of a container. | `docker logs container_name`<br>`docker logs container_id`<br>`docker logs -f container_name` |
| `docker stats` | Displays a live stream of container(s) resource usage statistics. | `docker stats`<br>`docker stats container_name`<br>`docker stats --no-stream container_name` |
| `docker commit` | Creates a new image from a container's changes. | `docker commit container_name new_image_name`<br>`docker commit container_id new_image_name`<br>`docker commit -m "Added new feature" container_name new_image_name` |
| `docker save` | Saves an image to a tar archive. | `docker save -o image.tar image_name`<br>`docker save image_name > image.tar`<br>`docker save image_name -o /path/to/image.tar` |
| `docker load` | Loads an image from a tar archive. | `docker load -i image.tar`<br>`docker load < image.tar`<br>`docker load --input image.tar` |
