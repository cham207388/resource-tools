# Docker Image Commands

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `docker image ls` | Lists all images available on the Docker host. | `docker image ls`<br>`docker image ls -a`<br>`docker image ls --filter dangling=true` |
| `docker image pull` | Downloads an image from a Docker registry. | `docker image pull ubuntu`<br>`docker image pull nginx:latest`<br>`docker image pull mysql:5.7` |
| `docker image rm` | Removes one or more images from the Docker host. | `docker image rm image_name`<br>`docker image rm image_id`<br>`docker image rm image_name:tag` |
| `docker image inspect` | Displays detailed information on one or more images. | `docker image inspect image_name`<br>`docker image inspect image_id`<br>`docker image inspect image_name:tag` |
| `docker image tag` | Creates a tag TARGET_IMAGE that refers to SOURCE_IMAGE. | `docker image tag source_image target_image`<br>`docker image tag image_id myrepo/image_name:tag`<br>`docker image tag image_name new_image_name:tag` |
| `docker image build` | Builds an image from a Dockerfile. | `docker image build -t my_image .`<br>`docker image build --file Dockerfile-alternate -t my_image .`<br>`docker image build --no-cache -t my_image .` |
| `docker image push` | Pushes an image or a repository to a registry. | `docker image push my_image`<br>`docker image push myrepo/my_image`<br>`docker image push myrepo/my_image:tag` |
| `docker image save` | Saves one or more images to a tar archive (streamed to STDOUT by default). | `docker image save -o image.tar image_name`<br>`docker image save image_name > image.tar`<br>`docker image save image_name -o /path/to/image.tar` |
| `docker image load` | Loads an image from a tar archive or STDIN. | `docker image load -i image.tar`<br>`docker image load < image.tar`<br>`docker image load --input image.tar` |
| `docker image history` | Shows the history of an image. | `docker image history image_name`<br>`docker image history image_id`<br>`docker image history image_name:tag` |
| `docker image prune` | Removes unused images. | `docker image prune`<br>`docker image prune -a`<br>`docker image prune --filter "until=24h"` |
| `docker image import` | Imports the contents from a tarball to create a filesystem image. | `docker image import /path/to/image.tar`<br>`docker image import http://example.com/image.tar`<br>`docker image import - example_image < image.tar` |
| `docker image export` | Exports an image’s filesystem as a tar archive. | `docker image export image_name -o image.tar`<br>`docker image export image_id -o image.tar`<br>`docker image export image_name > image.tar` |

## Docker Image Commands (Additional)

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `docker image build --check` | Validates the Dockerfile before attempting to build. | `docker image build --check -t my_image .`<br>`docker image build --check --file Dockerfile-alternate -t my_image .`<br>`docker image build --check --no-cache -t my_image .` |
| `docker image build --progress` | Sets the type of progress output for the build. | `docker image build --progress=plain .`<br>`docker image build --progress=tty .`<br>`docker image build --progress=auto .` |
| `docker image build --pull` | Always attempt to pull a newer version of the image. | `docker image build --pull -t my_image .`<br>`docker image build --pull --file Dockerfile-alternate -t my_image .`<br>`docker image build --pull --no-cache -t my_image .` |
| `docker image build --rm` | Remove intermediate containers after a successful build (default). | `docker image build --rm -t my_image .`<br>`docker image build --rm --file Dockerfile-alternate -t my_image .`<br>`docker image build --rm --no-cache -t my_image .` |
| `docker image build --force-rm` | Always remove intermediate containers. | `docker image build --force-rm -t my_image .`<br>`docker image build --force-rm --file Dockerfile-alternate -t my_image .`<br>`docker image build --force-rm --no-cache -t my_image .` |
| `docker image build --label` | Adds metadata to an image. | `docker image build --label "version=1.0" -t my_image .`<br>`docker image build --label "maintainer=example@example.com" -t my_image .`<br>`docker image build --label "description='My Docker Image'" -t my_image .` |
| `docker image build --cache-from` | Uses an external cache source. | `docker image build --cache-from=alpine:latest -t my_image .`<br>`docker image build --cache-from=myrepo/my_image:cache -t my_image .`<br>`docker image build --cache-from=alpine:latest --cache-from=myrepo/my_image:cache -t my_image .` |
| `docker image build --squash` | Squashes newly built layers into a single new layer. | `docker image build --squash -t my_image .`<br>`docker image build --squash --file Dockerfile-alternate -t my_image .`<br>`docker image build --squash --no-cache -t my_image .` |
| `docker image build --target` | Sets the target build stage to build. | `docker image build --target build-stage -t my_image .`<br>`docker image build --target final-stage -t my_image .`<br>`docker image build --target intermediate-stage -t my_image .` |
| `docker image build --secret` | Adds a secret to the build. | `docker image build --secret id=mysecret,src=mysecret.txt -t my_image .`<br>`docker image build --secret id=mysecret,src=mysecret.txt --file Dockerfile-alternate -t my_image .`<br>`docker image build --secret id=mysecret,src=mysecret.txt --no-cache -t my_image .` |
| `docker image build --ssh` | Allows the SSH agent to be used for the build. | `docker image build --ssh default -t my_image .`<br>`docker image build --ssh default --file Dockerfile-alternate -t my_image .`<br>`docker image build --ssh default --no-cache -t my_image .` |
| `docker image build --add-host` | Adds a custom host-to-IP mapping (host:ip). | `docker image build --add-host=example.com:127.0.0.1 -t my_image .`<br>`docker image build --add-host=example.com:127.0.0.1 --file Dockerfile-alternate -t my_image .`<br>`docker image build --add-host=example.com:127.0.0.1 --no-cache -t my_image .` |
| `docker image build --compress` | Compresses the build context using gzip. | `docker image build --compress -t my_image .`<br>`docker image build --compress --file Dockerfile-alternate -t my_image .`<br>`docker image build --compress --no-cache -t my_image .` |
| `docker image build --network` | Sets the networking mode for the RUN instructions during build. | `docker image build --network host -t my_image .`<br>`docker image build --network none -t my_image .`<br>`docker image build --network bridge -t my_image .` |
| `docker image build --iidfile` | Writes the image ID to the file. | `docker image build --iidfile /tmp/my_image.iid -t my_image .`<br>`docker image build --iidfile /tmp/my_image.iid --file Dockerfile-alternate -t my_image .`<br>`docker image build --iidfile /tmp/my_image.iid --no-cache -t my_image .` |

## Building multi-platform image from a Dockerfile

```bash
docker buildx create --use
```

```bash
docker buildx build --platform linux/amd64,linux/arm64 -t your_dockerhub_username/fastapi-multiplatform:latest --push .
```