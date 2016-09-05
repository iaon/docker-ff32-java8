#!/bin/bash
export DOCKER_NAME=docker-ff32-java8
mkdir -p ${HOME}/${DOCKER_NAME}
xhost local:$(whoami)
docker run --rm -ti --hostname=${DOCKER_NAME}-$(id -un) -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/snd:/dev/snd -v ${HOME}/${DOCKER_NAME}:/root --privileged iaon/docker-ff32-java8:ff45

