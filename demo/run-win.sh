#!/bin/bash

DOCKER_IMAGE=markhobson/maven-firefox

# run on Windows Git bash
docker pull $DOCKER_IMAGE
winpty docker run --rm -it -v "/$(pwd -W)://usr/src" -w //usr/src $DOCKER_IMAGE mvn clean verify

# docker run -it -v ${PWD}://usr/src -w //usr/src markhobson/maven-firefox pwd
