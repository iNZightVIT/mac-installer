#!/bin/sh
set -ev

if [ ! -d /Library/Frameworks/GTK+.framework  ]; then exit 1; fi
if [ ! -d /opt/X11 ]; then exit 1; fi
if [ ! -d /Library/Frameworks/R.framework  ]; then exit 1; fi

## finally, build the installer - if this is successful, then we have won! 
R -e "print('hello world')"

exit 0
