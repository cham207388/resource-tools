# Docker Network Commands

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `docker network ls` | Lists all networks available on the Docker host. | `docker network ls`<br>`docker network ls -q`<br>`docker network ls --filter driver=bridge` |
| `docker network create` | Creates a new network. | `docker network create network_name`<br>`docker network create -d bridge network_name`<br>`docker network create -d overlay network_name` |
| `docker network rm` | Removes one or more networks. | `docker network rm network_name`<br>`docker network rm network_id`<br>`docker network rm $(docker network ls -q)` |
| `docker network inspect` | Displays detailed information on one or more networks. | `docker network inspect network_name`<br>`docker network inspect network_id`<br>`docker network inspect $(docker network ls -q)` |
