#!/bin/bash
set -e

# Stop and remove all Docker containers
docker stop $(docker ps -a -q) || true
docker rm $(docker ps -a -q) || true

echo "All Docker containers stopped and removed."
