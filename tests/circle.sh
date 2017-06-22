#!/usr/bin/env bash
set -e

echo "Starting the datastore container..."
docker run \
  --name datastore \
  -v ${PWD}/tests/work-data:/work \
  datastore:latest \
  datastore-histogram-tile-writer -f /output/flatbuffer_file -o /output/orc_file ./*

echo "Done!"
