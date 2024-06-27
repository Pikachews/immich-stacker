#!/bin/bash

version=$(git describe --tags)

# docker build . -t ghcr.io/pikachews/immich-stacker:${version}
# docker build . -t ghcr.io/pikachews/immich-stacker:latest
docker build . -t pikachews/immich-stacker:${version}
docker build . -t pikachews/immich-stacker:latest

# docker push ghcr.io/pikachews/immich-stacker:${version}
# docker push ghcr.io/pikachews/immich-stacker:latest
docker push pikachews/immich-stacker:${version}
docker push pikachews/immich-stacker:latest
