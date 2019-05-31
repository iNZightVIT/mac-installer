#!/bin/bash

R_VERSION=latest

# install GTK2+
sudo chown -R $(whoami) /usr/local/share;
curl -L http://mac.r-project.org/libs/GTK_2.24.17-X11.pkg -o gtk.pkg;
sudo installer -pkg gtk.pkg -target / -allowUntrusted;
rm gtk.pkg;

# install r
curl -L http://cran.stat.auckland.ac.nz/bin/macosx/el-capitan/base/R-$R_VERSION.pkg -o r.pkg
sudo installer -pkg r.pkg -target / -allowUntrusted
if [ ! -d /Library/Frameworks/R.framework  ]; then exit 1; fi

# install r packages
/usr/local/bin/R --slave -f install_inzight.R
if [ ! -d iNZightVIT/.library ]; then exit 1; fi
/usr/local/bin/R --slave -e ".libPaths('iNZightVIT/.library'); requireNamespace('RGtk2')"

