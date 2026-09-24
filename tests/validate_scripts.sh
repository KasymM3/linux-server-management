#!/usr/bin/env bash

set -euo pipefail

echo "Validating Bash scripts..."

FAILED=0

for script in scripts/*.sh; do
    echo "Checking $script"

    if bash -n "$script"; then
        echo "PASS: $script"
    else
        echo "FAIL: $script"
        FAILED=1
    fi
done

if [ "$FAILED" -ne 0 ]; then
    echo "One or more scripts failed validation."
    exit 1
fi

echo "All scripts passed validation."