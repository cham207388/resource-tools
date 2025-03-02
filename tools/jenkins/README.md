# Copied from [vdespa](https://github.com/vdespa/install-jenkins-docker)

This repository contains a Docker Compose configuration for a quick installation of Jenkins. This setup is not intended for production systems.

Credits: This approach is mostly based on the [offical instructions](https://www.jenkins.io/doc/book/installing/docker/) but takes advantage of Docker Compose (by using a `docker-compose.yml` file) to reduce the number of steps needed to get Jenkins up and running.

## Start Jenkins

### Step 1: start containers

Start Jenkins:

```bash
docker compose -f docker-compose-jenkins up -d
```

### Step 2: access

[http://localhost:8080/](http://localhost:8080/) and finish the installation process.

## Step 3

If you wish to stop Jenkins and get back to it later, run:

```bash
docker compose -f docker-compose-jenkins down
```

If you wish to start Jenkins again later, just run the same comand from Step 3.

## Clean up

Once you are done playing with Jenkins maybe it is time to clean things up.
Run the following comand to terminate Jenkins and to remove all volumes and images used:

```bash
docker compose -f docker-compose-jenkins down --volumes --rmi all 
```
