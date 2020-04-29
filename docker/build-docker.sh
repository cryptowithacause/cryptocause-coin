#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-cryptocausepay/cryptocaused-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/cryptocaused docker/bin/
cp $BUILD_DIR/src/cryptocause-cli docker/bin/
cp $BUILD_DIR/src/cryptocause-tx docker/bin/
strip docker/bin/cryptocaused
strip docker/bin/cryptocause-cli
strip docker/bin/cryptocause-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
