#!/bin/sh

# prevent expansion of '*' in crontab frequency
set -f

# TODO: look at compression options
BORG_COMMAND="borg create --list --filter AME --stats ::$BORG_PREFIX-{now} /data"

echo "$BORG_FREQUENCY $BORG_COMMAND > /proc/1/fd/1 2> /proc/1/fd/2" | crontab -

exec $@
