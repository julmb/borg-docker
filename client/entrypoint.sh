#!/bin/sh

# prevent expansion of '*' in crontab frequency
set -f

command="borg create --list --filter AME --stats $server:$repository::$prefix-{now} /data"

echo $frequency $command > entries.txt

crontab entries.txt

exec $@
