#!/bin/bash
set -e

PROJECT_DIR="/root/college-devops"

echo "Deploying S.I.E.T. College Portal..."

cd "$PROJECT_DIR"

docker compose up -d --build

echo "Checking website..."

if curl -fsS http://localhost:8080/ > /dev/null; then
    echo "SUCCESS: S.I.E.T. website is running!"
else
    echo "ERROR: Website health check failed."
    exit 1
fi

docker compose ps
echo "Deployment completed."
