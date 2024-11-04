# Additional Docker Commands

## Docker Swarm Commands

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `docker swarm init` | Initializes a swarm. | `docker swarm init`<br>`docker swarm init --advertise-addr 192.168.1.1`<br>`docker swarm init --listen-addr 0.0.0.0:2377` |
| `docker swarm join` | Joins a node to a swarm. | `docker swarm join --token TOKEN SWARM_MANAGER_IP:PORT`<br>`docker swarm join --advertise-addr 192.168.1.2`<br>`docker swarm join --listen-addr 0.0.0.0:2377` |
| `docker swarm leave` | Leaves a swarm. | `docker swarm leave`<br>`docker swarm leave --force`<br>`docker swarm leave --quiet` |
| `docker swarm update` | Updates swarm settings. | `docker swarm update --task-history-limit 5`<br>`docker swarm update --snapshot-interval 5000`<br>`docker swarm update --dispatcher-heartbeat 5s` |
| `docker swarm unlock` | Unlocks a locked manager. | `docker swarm unlock`<br>`docker swarm unlock --input-file unlock-key`<br>`docker swarm unlock --quiet` |
| `docker swarm unlock-key` | Manages the unlock key. | `docker swarm unlock-key`<br>`docker swarm unlock-key --rotate`<br>`docker swarm unlock-key --quiet` |

## Docker Secret Commands

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `docker secret create` | Creates a secret from a file or STDIN as content. | `docker secret create secret_name file_name`<br>`echo "my_secret" | docker secret create secret_name -`<br>`docker secret create --label env=prod secret_name file_name` |
| `docker secret ls` | Lists secrets. | `docker secret ls`<br>`docker secret ls --filter name=my_secret`<br>`docker secret ls --quiet` |
| `docker secret inspect` | Displays detailed information on one or more secrets. | `docker secret inspect secret_id`<br>`docker secret inspect secret_name`<br>`docker secret inspect --pretty secret_id` |
| `docker secret rm` | Removes one or more secrets. | `docker secret rm secret_name`<br>`docker secret rm secret_id`<br>`docker secret rm secret1 secret2` |

## Docker Service Commands

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `docker service create` | Creates a new service. | `docker service create --name service_name image_name`<br>`docker service create --replicas 3 image_name`<br>`docker service create --network my_network image_name` |
| `docker service ls` | Lists services. | `docker service ls`<br>`docker service ls --filter mode=replicated`<br>`docker service ls --quiet` |
| `docker service ps` | Lists the tasks of a service. | `docker service ps service_name`<br>`docker service ps service_id`<br>`docker service ps --filter desired-state=running service_name` |
| `docker service inspect` | Displays detailed information on one or more services. | `docker service inspect service_name`<br>`docker service inspect service_id`<br>`docker service inspect --pretty service_name` |
| `docker service update` | Updates a service. | `docker service update --image new_image service_name`<br>`docker service update --replicas 5 service_name`<br>`docker service update --env-add "MY_ENV_VAR=my_value" service_name` |
| `docker service rm` | Removes one or more services. | `docker service rm service_name`<br>`docker service rm service_id`<br>`docker service rm service1 service2` |

## Docker Stack Commands

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `docker stack deploy` | Deploys a new stack or updates an existing stack. | `docker stack deploy -c docker-compose.yml stack_name`<br>`docker stack deploy --with-registry-auth stack_name`<br>`docker stack deploy -c file1.yml -c file2.yml stack_name` |
| `docker stack ls` | Lists stacks. | `docker stack ls`<br>`docker stack ls --filter name=my_stack`<br>`docker stack ls --quiet` |
| `docker stack ps` | Lists the tasks in the stack. | `docker stack ps stack_name`<br>`docker stack ps --filter desired-state=running stack_name`<br>`docker stack ps --format "{{.Name}}: {{.CurrentState}}" stack_name` |
| `docker stack services` | Lists the services in the stack. | `docker stack services stack_name`<br>`docker stack services --filter mode=replicated stack_name`<br>`docker stack services --format "{{.Name}}: {{.Replicas}}" stack_name` |
| `docker stack rm` | Removes one or more stacks. | `docker stack rm stack_name`<br>`docker stack rm stack1 stack2`<br>`docker stack rm $(docker stack ls --quiet)` |
