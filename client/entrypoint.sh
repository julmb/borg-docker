#!/bin/sh

echo "rebuilding known hosts..."
mkdir --parents ~/.ssh
read type key host < ~/ssh_host_ed25519_key.pub
echo $host $type $key > ~/.ssh/known_hosts

echo "rebuilding crontab..."
export BORG_REPO=$repository
export BORG_PASSPHRASE=$passphrase
echo "$time $command > /proc/1/fd/1 2> /proc/1/fd/2" | crontab -

exec "$@"
