# Configuration Guide

Project configuration is stored in:

config/server-management.conf

## Available Settings

### DISK_WARNING_PERCENT

Defines the disk usage percentage at which a warning should be generated.

Default:

DISK_WARNING_PERCENT=80

### LOG_LEVEL

Defines the desired logging level.

Default:

LOG_LEVEL=INFO

Configuration files must not contain passwords, private keys, API tokens, or other secrets.
## Exit Codes

The disk monitoring script uses the following exit codes:

- 0 - disk usage is acceptable
- 1 - disk usage exceeded the threshold
- 2 - invalid input