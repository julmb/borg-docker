#!/bin/sh

# prevent expansion of '*' in crontab frequency
set -f

BORG_COMMAND="borg create --verbose --list --filter AME --stats --compression $BORG_COMPRESSION ::$BORG_PREFIX-{now} $BORG_SOURCE"

echo "$BORG_FREQUENCY $BORG_COMMAND > /proc/1/fd/1 2> /proc/1/fd/2" | crontab -

exec $@
