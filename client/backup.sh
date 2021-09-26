#!/bin/sh

borg create --list --filter AME --stats $server:$repository::'{now}' /data
