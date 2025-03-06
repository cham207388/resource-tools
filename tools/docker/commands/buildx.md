# 🚀 Docker Build & Buildx Cheat Sheet

- [🚀 Docker Build \& Buildx Cheat Sheet](#-docker-build--buildx-cheat-sheet)
  - [What is `docker buildx`?](#what-is-docker-buildx)
    - [Why Use `docker buildx`?\*\*](#why-use-docker-buildx)
  - [Build and Manage Images](#build-and-manage-images)
  - [Managing Builders](#managing-builders)
  - [Cleaning Up Build Cache](#cleaning-up-build-cache)
  - [Debugging \& Optimization](#debugging--optimization)
  - [Example Use Cases](#example-use-cases)
    - [1️⃣ **Build a Multi-Platform Image and Push to Docker Hub**](#1️⃣-build-a-multi-platform-image-and-push-to-docker-hub)


## What is `docker buildx`?

`docker buildx` is an advanced CLI tool that extends the capabilities of `docker build`. It allows users to **build multi-platform images, optimize caching, leverage remote builders, and improve build performance** using BuildKit.

### Why Use `docker buildx`?**
✔️ **Multi-Architecture Builds** – Easily build images for `amd64`, `arm64`, and other architectures.  
✔️ **Faster Builds** – Uses **BuildKit**, which improves performance with parallel builds and layer caching.  
✔️ **Better Caching** – Supports external cache storage (`local`, `registry`, `s3`).  
✔️ **Remote Builders** – Enables building on a **cluster of nodes** instead of the local machine.  
✔️ **Direct Image Push** – Builds and **pushes** images to registries in a single step.  
✔️ **Cross-Platform Compatibility** – Build once and run anywhere!  

---

## Build and Manage Images

| Action                     | Description                                  | Command                                       | Example                                      |
|----------------------------|----------------------------------------------|-----------------------------------------------|----------------------------------------------|
| **Build an image**         | Builds a Docker image from a `Dockerfile`   | `docker build -t <image-name> <path>`        | `docker build -t myapp .`                   |
| **Build and use BuildKit** | Enables BuildKit for faster builds          | `DOCKER_BUILDKIT=1 docker build .`           | `DOCKER_BUILDKIT=1 docker build -t myapp .` |
| **Build and specify a platform** | Builds an image for a different OS/Arch | `docker buildx build --platform <arch>`      | `docker buildx build --platform linux/arm64 -t myapp .` |
| **Build multi-arch images** | Builds for multiple architectures at once   | `docker buildx build --platform linux/amd64,linux/arm64 -t myapp .` | `docker buildx build --platform linux/amd64,linux/arm64 -t myapp .` |
| **Build and push to registry** | Pushes image directly to a registry     | `docker buildx build --push -t <registry>/<image>` | `docker buildx build --platform linux/amd64,linux/arm64 --push -t myrepo/myapp .` |
| **Load image locally**     | Builds and loads image into local Docker    | `docker buildx build --load -t <image>`      | `docker buildx build --platform linux/amd64 --load -t myapp .` |
| **Use a custom builder instance** | Selects a specific builder instance | `docker buildx use <builder-name>`           | `docker buildx use mybuilder`               |

---

## Managing Builders

| Action                      | Description                                  | Command                                      | Example                                      |
|-----------------------------|----------------------------------------------|----------------------------------------------|----------------------------------------------|
| **List available builders** | Shows available `buildx` builder instances  | `docker buildx ls`                           | `docker buildx ls`                           |
| **Create a new builder**    | Creates a new `buildx` builder instance     | `docker buildx create --name <builder-name>` | `docker buildx create --name mybuilder`     |
| **Switch to a builder**     | Sets a default `buildx` builder instance    | `docker buildx use <builder-name>`           | `docker buildx use mybuilder`               |
| **Inspect a builder**       | Shows details of a `buildx` builder         | `docker buildx inspect <builder-name>`       | `docker buildx inspect mybuilder`           |
| **Start a builder**         | Starts a stopped `buildx` builder           | `docker buildx start <builder-name>`         | `docker buildx start mybuilder`             |
| **Stop a builder**          | Stops a running `buildx` builder            | `docker buildx stop <builder-name>`          | `docker buildx stop mybuilder`              |
| **Remove a builder**        | Deletes a `buildx` builder instance         | `docker buildx rm <builder-name>`            | `docker buildx rm mybuilder`                |

---

## Cleaning Up Build Cache

| Action                      | Description                                  | Command                                      | Example                                      |
|-----------------------------|----------------------------------------------|----------------------------------------------|----------------------------------------------|
| **Remove all build cache**  | Deletes all local build caches              | `docker builder prune -a -f`                 | `docker builder prune -a -f`                 |
| **Remove specific build**   | Deletes a particular build                  | `docker buildx rm <BUILD_ID>`                | `docker buildx rm kpsuxi`                    |
| **Prune unused build cache** | Deletes only unused cache                   | `docker builder prune -f`                    | `docker builder prune -f`                    |
| **Prune all BuildKit caches** | Removes all BuildKit cache data           | `docker buildx prune --all -f`               | `docker buildx prune --all -f`               |
| **Reset builder state**     | Removes all builders (be careful)           | `docker buildx rm --all`                     | `docker buildx rm --all`                     |

---

## Debugging & Optimization

| Action                      | Description                                  | Command                                      | Example                                      |
|-----------------------------|----------------------------------------------|----------------------------------------------|----------------------------------------------|
| **Show build progress logs** | Displays verbose build logs                 | `docker buildx build --progress=plain`      | `docker buildx build --progress=plain .`    |
| **Limit build cache size**  | Restricts the cache size for builds         | `docker buildx build --cache-to=<type=max,size=1G>` | `docker buildx build --cache-to=local,type=max,size=1G .` |
| **Set custom build context** | Defines a different build context           | `docker buildx build -f <Dockerfile> <context>` | `docker buildx build -f Dockerfile.dev .` |
| **Use an external cache source** | Speeds up builds with external cache  | `docker buildx build --cache-from=type=registry,ref=<registry>/<image>` | `docker buildx build --cache-from=type=registry,ref=myrepo/myapp .` |

---

## Example Use Cases

### 1️⃣ **Build a Multi-Platform Image and Push to Docker Hub**
```sh
docker buildx build --platform linux/amd64,linux/arm64 --push -t myrepo/myapp:latest .