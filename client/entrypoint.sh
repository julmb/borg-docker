#!/bin/sh

# prevent expansion of '*' in crontab frequency
set -f

BORG_COMMAND="borg create --list --filter AME --stats ::$BORG_PREFIX-{now} /data"

echo "$BORG_FREQUENCY $BORG_COMMAND > /proc/1/fd/1 2> /proc/1/fd/2" > entries.txt

crontab entries.txt

# TODO: remove entries, maybe also use tmp file

exec $@
