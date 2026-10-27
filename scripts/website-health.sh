#!/bin/bash

URL="http://localhost:8080/"

HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" --max-time 5 "$URL")

if [ "$HTTP_STATUS" = "200" ]; then
    echo "S.I.E.T. website is UP"
    echo "HTTP Status: $HTTP_STATUS"
    exit 0
else
    echo "S.I.E.T. website is DOWN or not responding correctly"
    echo "HTTP Status: $HTTP_STATUS"
    exit 1
fi
