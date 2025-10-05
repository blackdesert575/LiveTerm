#!/usr/bin/env bash
set -euxo pipefail

#stop current container
docker stop liveterm

#remove current container
docker rm liveterm

#run docker image
docker run -d --name liveterm -p 8002:3000 docker.io/focal1119/liveterm:dev