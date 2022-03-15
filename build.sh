#!/bin/bash

IMAGE_NAME="$1"

if [ "$IMAGE_NAME" == "" ]; then
  echo "Usage: yarn build <image>";
  exit 1
fi

if [ "$IMAGE_NAME" == "maintenance" ]; then
  docker build \
    -t "hyperqubeio/$IMAGE_NAME:latest" \
    -f "$IMAGE_NAME/Dockerfile" \
    "$IMAGE_NAME";
elif [ "$IMAGE_NAME" == "python" ]; then
  PYTHON_VERSION="${PYTHON_VERSION:-3.8}"
  docker build \
    -t "hyperqubeio/$IMAGE_NAME:$PYTHON_VERSION" \
    -f "$IMAGE_NAME/Dockerfile" \
    --build-arg PYTHON_VERSION="$PYTHON_VERSION" \
    "$IMAGE_NAME";
elif [ "$IMAGE_NAME" == "go" ]; then
  GO_VERSION="${GO_VERSION:-1.18}"
  docker build \
    -t "hyperqubeio/$IMAGE_NAME:$GO_VERSION" \
    -f "$IMAGE_NAME/Dockerfile" \
    --build-arg GO_VERSION="$GO_VERSION" \
    "$IMAGE_NAME";
fi
