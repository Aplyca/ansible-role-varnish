#!/bin/bash
# Build Varnish provisiones with ansible

DOCKER_IMAGE="aplyca/varnish"

echo "Building image"
docker build -t ${DOCKER_IMAGE} .

echo "Stopping and removing running db containers"
docker stop varnish && docker rm varnish

echo "Starting new db container"
docker run -d --name varnish -p 3306:3306 aplyca/varnish
