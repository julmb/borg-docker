#!/bin/sh

command="borg create --list --filter AME --stats $server:$repository::'{now}' /data"

echo $frequency $command > entries.txt

crontab entries.txt

# TODO: are quotations needed?
exec "$@"
