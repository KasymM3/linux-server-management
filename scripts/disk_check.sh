#!/usr/bin/env bash

set -euo pipefail

THRESHOLD="${1:-80}"

if ! [[ "$THRESHOLD" =~ ^[0-9]+$ ]]; then
    echo "Error: threshold must be a number."
    exit 2
fi

USAGE=$(df -P / | awk 'NR==2 {gsub("%", "", $5); print $5}')

echo "Current disk usage: ${USAGE}%"
echo "Warning threshold: ${THRESHOLD}%"

if (( USAGE >= THRESHOLD )); then
    echo "WARNING: disk usage is above the configured threshold."
    exit 1
fi

echo "Disk usage is within the acceptable range."
exit 0