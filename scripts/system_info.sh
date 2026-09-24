#!/usr/bin/env bash

set -euo pipefail

echo "================================="
echo " Linux Server Information"
echo "================================="

echo "Hostname:"
hostname

echo
echo "Operating System:"
if [ -f /etc/os-release ]; then
    grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"'
else
    uname -s
fi

echo
echo "Kernel:"
uname -r

echo
echo "Uptime:"
uptime -p

echo
echo "Memory:"
free -h

echo
echo "Disk usage:"
df -h /

echo
echo "System information collection completed."