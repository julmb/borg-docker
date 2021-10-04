#!/bin/sh

echo "rebuilding authorized keys..."
mkdir -p ~/.ssh
> ~/.ssh/authorized_keys
while read repository key
do
    command="borg serve --append-only --restrict-to-path $repository"
    echo restrict,command=\"$command\" $key >> ~/.ssh/authorized_keys
done < ~/clients

exec "$@"
