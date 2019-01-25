#!/bin/sh
set -ev

if [ ! -d /Library/Frameworks/GTK+.framework  ]; then exit 1; fi
if [ ! -d /opt/X11 ]; then exit 1; fi
if [ ! -d /Library/Frameworks/R.framework  ]; then exit 1; fi

## finally, build the installer - if this is successful, then we have won! 
# - install these into a separate directory which can then be packaged ... 
/usr/local/bin/R --slave -f install_inzight.R

R --slave -e "requireNamespace('RGtk2')"

exit 0
