# Docker Container Commands

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `docker container ls` | Lists all running containers. | `docker container ls`<hr>`docker container ls -a`<hr>`docker container ls --filter status=exited` |
| `docker container run` | Runs a command in a new container. | `docker container run ubuntu`<hr>`docker container run -d nginx`<hr>`docker container run -it alpine sh` <hr/> `docker container run -it --entrypoint /bin/bash image:tag`|
| `docker container stop` | Stops one or more running containers. | `docker container stop container_name`<hr>`docker container stop container_id`<hr>`docker container stop $(docker container ls -q)` |
| `docker container rm` | Removes one or more containers. | `docker container rm container_name`<hr>`docker container rm container_id`<hr>`docker container rm $(docker container ls -a -q)` |
| `docker container exec` | Runs a command in a running container. | `docker container exec -it container_name bash`<hr>`docker container exec -it container_id sh`<hr>`docker container exec container_name ls /app` |
| `docker container inspect` | Returns low-level information about a container. | `docker container inspect container_name`<hr>`docker container inspect container_id`<hr>`docker container inspect container_name:tag` |
| `docker container logs` | Fetches logs of a container. | `docker container logs container_name`<hr>`docker container logs container_id`<hr>`docker container logs -f container_name` |
| `docker container stats` | Displays a live stream of container(s) resource usage statistics. | `docker container stats`<hr>`docker container stats container_name`<hr>`docker container stats --no-stream container_name` |
| `docker container commit` | Creates a new image from a container's changes. | `docker container commit container_name new_image_name`<hr>`docker container commit container_id new_image_name`<hr>`docker container commit -m "Added new feature" container_name new_image_name` |
| `docker container cp` | Copies files/folders between a container and the local filesystem. | `docker container cp container_name:/path/to/file /host/path`<hr>`docker container cp /host/path container_name:/path/to/file`<hr>`docker container cp container_id:/path/to/file /host/path` |
| `docker container diff` | Inspects changes to files or directories on a container’s filesystem. | `docker container diff container_name`<hr>`docker container diff container_id`<hr>`docker container diff container_name:tag` |
| `docker container run` | run a container from an image | `docker container run container_name`<hr>`docker container run -it --entrypoint /bin/bash image-name`|
