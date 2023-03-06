#!/bin/sh

# variables
GIT_EVENT=${1}
GIT_REPOSITORY=${2}
GIT_COMMIT=${3}
GIT_ACTION=${4}

set -e

#if [ "$1" != "refs/heads/main" ]; then
#  echo "Deploy skipped: branch is not main"
#  exit 0
#fi

echo "Deploying application..."
echo {$GIT_EVENT}
cd /docker/$GIT_REPOSITORY
docker-compose pull
docker-compose down
docker-compose up -d --build
echo "Deployment successful!"