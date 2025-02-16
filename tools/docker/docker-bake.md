# Docker Bake

A utility that's available from version >= 4.38

## Example

```json
variable "IMAGE_TAG" {
    default = "latest"
}

variable "DOCKER_USERNAME" {
    default = "baicham"
}

variable "PROJECT_BASE" {
    default = "library"
}

group "default" {
    targets = ["backend", "frontend"]
}

target "backend" {
    context = "backend"
    dockerfile = "Dockerfile"
    tags = ["${DOCKER_USERNAME}/${PROJECT_BASE}-backend:${IMAGE_TAG}"]
}

target "frontend" {
    context = "frontend"
    dockerfile = "Dockerfile"
    tags = ["${DOCKER_USERNAME}/${PROJECT_BASE}-frontend:${IMAGE_TAG}"]
}
```

running `docker buildx bake -f docker-bake.hcl --push` will build and push images to docker hub
