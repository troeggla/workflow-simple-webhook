#!/bin/bash

set -e

if [ -z "$webhook_url" ]; then
    echo "No webhook_url configured"
    exit 1
fi

WEBHOOK_ENDPOINT=$webhook_url

if [ -n "$webhook_auth" ]; then
    WEBHOOK_ENDPOINT="-u $webhook_auth $webhook_url"
fi

curl -X POST \
     -H "User-Agent: GitHub-Hookshot/760256b" \
     $WEBHOOK_ENDPOINT
