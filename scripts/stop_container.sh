#!/bin/bash
set -e

# Stop and remove all Docker containers if there are any
if [ "$(docker ps -aq)" ]; then
  docker stop $(docker ps -aq) || true
  docker rm $(docker ps -aq) || true
  echo "All Docker containers stopped and removed."
else 
  echo "No Docker containers found to stop and remove."
fi
