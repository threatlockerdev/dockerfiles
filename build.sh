#!/bin/bash

IMAGE_NAME="$1"

if [ "$IMAGE_NAME" == "" ]; then
  echo "Usage: yarn build <image>";
  exit 1
fi

docker build \
  -t "hyperqubeio/$IMAGE_NAME" \
  -f "$IMAGE_NAME/Dockerfile" \
  "$IMAGE_NAME"
