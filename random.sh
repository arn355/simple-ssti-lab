#!/bin/bash

FLAGNAME=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 5 | head -n 1)
FLAG=$(echo $RANDOM | md5sum | head -c 32)

echo ISAG{$FLAG} > flag_$FLAGNAME

exec "$@"