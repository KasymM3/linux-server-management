# Troubleshooting Guide

## Permission Denied

Example:

./scripts/system_info.sh: Permission denied

Solution:

chmod +x scripts/system_info.sh

---

## Bash Bad Interpreter

Example:

/usr/bin/env: 'bash\r': No such file or directory

Cause:

The script contains Windows CRLF line endings.

Solution:

Convert the file to LF line endings.

The repository includes `.gitattributes` to prevent this problem.

---

## Git Push Rejected

Example:

rejected main -> main (fetch first)

Cause:

The remote repository contains commits that are not available locally.

Solution:

git fetch origin
git pull origin main

Review the remote changes before pushing again.

---

## Merge Conflict

Use:

git status

Open the conflicted file, decide which changes should remain, remove the Git conflict markers, and then commit the resolved file.