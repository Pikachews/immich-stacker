#!/bin/bash

version=$(git describe --tags)

# podman build . -t ghcr.io/pikachews/immich-stacker:${version}
# podman build . -t ghcr.io/pikachews/immich-stacker:latest
podman build . -t pikachews/immich-stacker:${version}
podman build . -t pikachews/immich-stacker:latest

# podman push ghcr.io/pikachews/immich-stacker:${version}
# podman push ghcr.io/pikachews/immich-stacker:latest
podman push pikachews/immich-stacker:${version}
podman push pikachews/immich-stacker:latest
