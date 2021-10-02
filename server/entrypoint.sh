#!/bin/sh

echo "rebuilding ssh configuration..."
rm -rf ~/.ssh
mkdir ~/.ssh
while read repository key
do
    command="borg serve --append-only --restrict-to-path $repository"
    echo restrict,command=\"$command\" $key >> ~/.ssh/authorized_keys
done < ~/clients

exec "$@"
