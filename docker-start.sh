#!/bin/bash

docker build -t codecation .

echo "Stopping container..."
docker stop codecation-web

echo "Removing container..."
docker rm codecation-web

echo "Starting container..."
docker run -d --restart=always -e VIRTUAL_HOST=mirror.me --name=codecation-web codecation
