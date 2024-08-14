# Compose Commands

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `docker compose up` | Creates and starts containers defined in the `docker-compose.yml` file. | `docker compose up`<br>`docker compose up -d`<br>`docker compose up --build` |
| `docker compose down` | Stops and removes containers, networks, images, and volumes defined in the `docker-compose.yml` file. | `docker compose down`<br>`docker compose down --volumes`<br>`docker compose down --rmi all` |
| `docker compose ps` | Lists containers. | `docker compose ps`<br>`docker compose ps -a`<br>`docker compose ps --services` |
| `docker compose logs` | Displays log output from services. | `docker compose logs`<br>`docker compose logs -f`<br>`docker compose logs service_name` |
| `docker compose build` | Builds or rebuilds services. | `docker compose build`<br>`docker compose build --no-cache`<br>`docker compose build service_name` |
| `docker compose start` | Starts existing containers for a service. | `docker compose start`<br>`docker compose start service_name`<br>`docker compose start service1 service2` |
| `docker compose stop` | Stops running containers without removing them. | `docker compose stop`<br>`docker compose stop service_name`<br>`docker compose stop service1 service2` |
| `docker compose restart` | Restarts running containers. | `docker compose restart`<br>`docker compose restart service_name`<br>`docker compose restart service1 service2` |
| `docker compose rm` | Removes stopped service containers. | `docker compose rm`<br>`docker compose rm -f`<br>`docker compose rm -s -v` |
| `docker compose pull` | Pulls service images. | `docker compose pull`<br>`docker compose pull service_name`<br>`docker compose pull --ignore-pull-failures` |
| `docker compose exec` | Executes a command in a running container. | `docker compose exec service_name command`<br>`docker compose exec service_name bash`<br>`docker compose exec service_name ls /app` |
| `docker compose config` | Validates and views the compose file. | `docker compose config`<br>`docker compose config -q`<br>`docker compose config --services` |
| `docker compose scale` | Sets number of containers for a service. | `docker compose scale service_name=3`<br>`docker compose scale web=2 worker=3`<br>`docker compose scale db=1` |
| `docker compose port` | Prints the public port for a port binding. | `docker compose port service_name 80`<br>`docker compose port service_name 8080`<br>`docker compose port service_name 443` |
| `docker compose version` | Shows Docker Compose version information. | `docker compose version`<br>`docker compose version --short`<br>`docker compose version --format json` |
