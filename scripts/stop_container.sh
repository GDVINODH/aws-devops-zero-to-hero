#!/bin/bash
set -e

# Stop and remove all Docker containers if there are any
CONTAINERS=$(docker ps -aq)

if [ -n "$CONTAINERS" ]; then
  docker stop $CONTAINERS || true
  docker rm $CONTAINERS || true
  echo "All Docker containers stopped and removed."
else
  echo "No Docker containers found to stop and remove."
fi
