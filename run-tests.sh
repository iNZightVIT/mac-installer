#!/bin/sh
set -ev

# if [ ! -d /Library/Frameworks/GTK+.framework  ]; then exit 1; fi
# if [ ! -d /opt/X11 ]; then exit 1; fi
if [ ! -d /Library/Frameworks/R.framework  ]; then exit 1; fi

## finally, build the installer - if this is successful, then we have won! 
# - install these into a separate directory which can then be packaged ... 

ls -al iNZightVIT/.library
R --slave -e ".libPaths('iNZightVIT/.library'); requireNamespace('RGtk2')"

exit 0
