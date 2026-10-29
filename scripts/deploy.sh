#!/bin/bash
set -e

PROJECT_DIR="/root/college-devops"

echo "===================================="
echo " Deploying S.I.E.T. College Portal"
echo "===================================="

cd "$PROJECT_DIR"

echo "Building and starting website..."
docker compose up -d --build

echo ""
echo "Running automated website test..."
./scripts/test-website.sh

echo ""
echo "Checking container status..."
docker compose ps

echo ""
echo "Deployment completed successfully."
