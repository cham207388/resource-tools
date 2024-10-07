# Docker Container Commands

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `docker container ls` | Lists all running containers. | `docker container ls`<br>`docker container ls -a`<br>`docker container ls --filter status=exited` |
| `docker container run` | Runs a command in a new container. | `docker container run ubuntu`<br>`docker container run -d nginx`<br>`docker container run -it alpine sh` |
| `docker container stop` | Stops one or more running containers. | `docker container stop container_name`<br>`docker container stop container_id`<br>`docker container stop $(docker container ls -q)` |
| `docker container rm` | Removes one or more containers. | `docker container rm container_name`<br>`docker container rm container_id`<br>`docker container rm $(docker container ls -a -q)` |
| `docker container exec` | Runs a command in a running container. | `docker container exec -it container_name bash`<br>`docker container exec -it container_id sh`<br>`docker container exec container_name ls /app` |
| `docker container inspect` | Returns low-level information about a container. | `docker container inspect container_name`<br>`docker container inspect container_id`<br>`docker container inspect container_name:tag` |
| `docker container logs` | Fetches logs of a container. | `docker container logs container_name`<br>`docker container logs container_id`<br>`docker container logs -f container_name` |
| `docker container stats` | Displays a live stream of container(s) resource usage statistics. | `docker container stats`<br>`docker container stats container_name`<br>`docker container stats --no-stream container_name` |
| `docker container commit` | Creates a new image from a container's changes. | `docker container commit container_name new_image_name`<br>`docker container commit container_id new_image_name`<br>`docker container commit -m "Added new feature" container_name new_image_name` |
| `docker container cp` | Copies files/folders between a container and the local filesystem. | `docker container cp container_name:/path/to/file /host/path`<br>`docker container cp /host/path container_name:/path/to/file`<br>`docker container cp container_id:/path/to/file /host/path` |
| `docker container diff` | Inspects changes to files or directories on a container’s filesystem. | `docker container diff container_name`<br>`docker container diff container_id`<br>`docker container diff container_name:tag` |
| `docker container run` | run a container from an image | `docker container run container_name`<br>`docker container run -it --entrypoint /bin/bash image-name`|
