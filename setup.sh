#!/usr/bin/env bash
set -ex

if ! command -v 'docker'; then
echo "Error: command docker not found" > 2
exit 127
fi

docker network create mynet
docker run -d --rm --mount "type=bind,source=$(pwd)/postgres,target=/docker-entrypoint-initdb.d/,readonly" \
    --name='postgres' --network='mynet' -e POSTGRES_PASSWORD=password123 postgres:13
