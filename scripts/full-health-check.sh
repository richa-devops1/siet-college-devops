#!/bin/bash

echo "===================================="
echo " S.I.E.T. Full Health Check"
echo "===================================="

echo ""
echo "1. SERVER HEALTH"
./scripts/server-health.sh
SERVER_RESULT=$?

echo ""
echo "2. WEBSITE HEALTH"
./scripts/website-health.sh
WEBSITE_RESULT=$?

echo ""
echo "===================================="

if [ "$SERVER_RESULT" -eq 0 ] && [ "$WEBSITE_RESULT" -eq 0 ]; then
    echo "Overall result: ALL CHECKS PASSED"
    exit 0
else
    echo "Overall result: CHECK FAILED"
    exit 1
fi
