#!/usr/bin/env bash
set -e

echo "Starting the datastore container..."
docker run \
  --name datastore \
  -v ${PWD}/tests/work-data:/work \
  datastore:latest \
  datastore-histogram-tile-writer -b $((1478023200/3600)) -t $(((2140 << 3) | 0)) -v -f /output/output.fb ./1478023200_1478026799/0/2140/*

echo "Done!"
