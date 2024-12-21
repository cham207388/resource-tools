# Commands and arguments in K8s

docker's entrypoints correspond to kubernetes's command
docker's cmds correspond to kubernetes's args

example:

```dockerfile
ENTRYPOINT ["/bin/bash", "-c", "echo $0"]
CMD ["-l"]
```

```yaml
command: ["/bin/bash", "-c", "echo $0"]
args: ["-l"]
```

## Docker

- `docker run --entrypoint /bin/bash -it --name my-container my-image -c "echo $0"`
- `docker run --entrypoint /bin/bash -it --name my-container my-image -c "echo $0" -l`

## Kubernetes

- `kubectl run my-pod --image=my-image --command -- /bin/bash -c "echo $0" -- /bin/bash -c "echo $0" -l`

### Overriding commands in docker

- `docker run ubuntu sleep 10`
- `docker run ubuntu sleep 10 --entrypoint /bin/bash`
