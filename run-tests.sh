#!/bin/sh
set -ev

## check that GTK is installed ... 
if [ ! -d /Library/Frameworks/GTK.framework  ]; then exit 1; fi

if [ ! -f test.txt ]; then exit 1; fi

exit 0
