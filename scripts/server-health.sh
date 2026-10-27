#!/bin/bash

echo "=================================="
echo " S.I.E.T. Server Health Check"
echo "=================================="

echo ""
echo "1. Server uptime:"
uptime

echo ""
echo "2. Memory usage:"
free -h

echo ""
echo "3. Disk usage:"
df -h /

echo ""
echo "4. Docker container status:"
docker ps

echo ""
echo "Health check completed."
