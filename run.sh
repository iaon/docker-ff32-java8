#!/bin/bash
#mkdir -p ${HOME}/docker-ff32-java8
xhost local:$(whoami)
docker run --rm -ti --hostname=webex-$(id -un) -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/snd:/dev/snd --privileged iaon/docker-ff32-java8

