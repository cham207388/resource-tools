# Docker Volume Commands

- volumes directory. Volumes are created in this directory
  - /var/lib/docker/volumes

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `docker volume ls` | Lists all volumes available on the Docker host. | `docker volume ls`<br>`docker volume ls -q`<br>`docker volume ls --filter dangling=true` |
| `docker volume create` | Creates a new volume. | `docker volume create volume_name`<br>`docker volume create --name volume_name`<br>`docker volume create -d local volume_name` |
| `docker volume rm` | Removes one or more volumes. | `docker volume rm volume_name`<br>`docker volume rm volume_id`<br>`docker volume rm $(docker volume ls -q)` |
| `docker volume inspect` | Displays detailed information on one or more volumes. | `docker volume inspect volume_name`<br>`docker volume inspect volume_id`<br>`docker volume inspect $(docker volume ls -q)` |
