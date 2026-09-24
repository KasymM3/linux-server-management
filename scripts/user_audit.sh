#!/usr/bin/env bash

set -euo pipefail

echo "================================="
echo " Local User Audit"
echo "================================="

printf "%-20s %-10s %-30s\n" "USERNAME" "UID" "HOME"

while IFS=: read -r username _ uid _ _ home _; do
    if [ "$uid" -ge 1000 ] && [ "$username" != "nobody" ]; then
        printf "%-20s %-10s %-30s\n" "$username" "$uid" "$home"
    fi
done < /etc/passwd