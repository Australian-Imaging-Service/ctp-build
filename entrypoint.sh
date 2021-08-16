#!/bin/sh
set -x
if [ ! -z $timezone ]; then
  ln -s /usr/share/zoneinfo/$timezone /etc/localtime
else
  echo "timezone environment variable is not set"
fi 
exec $@