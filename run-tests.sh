#!/bin/sh
set -ev

## check that GTK is installed ... 
# if [ ! -d /Library/Frameworks/GTK+.framework  ]; then exit 1; fi

## check that XQuartz installed OK ...?


if [ ! -f test.txt ]; then exit 1; fi

## finally, build the installer - if this is successful, then we have won! 

exit 0
