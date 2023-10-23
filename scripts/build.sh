#!/bin/bash

# uncomment for debug
# set -x

echo "Setup PATH..."

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

echo "PATH is :$PATH"

export PATH

options=("docker build" "podman build")

select opt in "${options[@]}"
do
    case $opt in
        "docker build")            
            docker build . -t docker.io/focal1119/liveterm:dev -f Dockerfile.dev
            break
            ;;
        "podman build")
            podman build . -t docker.io/focal1119/liveterm:dev -f Dockerfile.dev
            break
            ;;
        *) echo "無效的選項 $REPLY";;
    esac
done