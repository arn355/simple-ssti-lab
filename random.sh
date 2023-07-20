#!/bin/bash

FLAGNAME=$(echo $RANDOM | md5sum | head -c 32)
FLAG=$(echo $RANDOM | md5sum | head -c 32)
echo ISAG{$FLAG} > $FLAGNAME
exec "$@"