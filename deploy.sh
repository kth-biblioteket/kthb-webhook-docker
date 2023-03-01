#!/bin/sh

# variables
GIT_EVENT=${1}
GIT_REPOSITORY=${2}
PUID=${3}
PGID=${4}

set -e

#if [ "$1" != "refs/heads/main" ]; then
#  echo "Deploy skipped: branch is not main"
#  exit 0
#fi

# Replace the following lines with your deployment process
echo "Deploying application..."
##docker-compose -H unix:///var/run/docker.sock pull
##docker-compose -H unix:///var/run/docker.sock up -d
echo {$GIT_EVENT}
cd /docker/mailprint
docker-compose down
docker-compose up -d --build
echo "Deployment successful!"