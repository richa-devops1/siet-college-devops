#!/bin/bash

URL="http://localhost:8080/"

echo "Testing S.I.E.T. website..."

HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" --max-time 5 "$URL")

if [ "$HTTP_STATUS" = "200" ]; then
    echo "PASS: Website returned HTTP 200"
    exit 0
else
    echo "FAIL: Website returned HTTP $HTTP_STATUS"
    exit 1
fi
