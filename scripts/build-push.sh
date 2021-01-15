#!/usr/bin/env bash

set -e
set -x

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build -t amarissisal/node12-frontend:12 .

docker build -t amarissisal/node12-frontend:latest .

docker push amarissisal/node12-frontend:12

docker push amarissisal/node12-frontend:latest
