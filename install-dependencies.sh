#!/bin/bash

XQUARTZ_VERSION=2.7.11
R_VERSION=latest

# install r
curl -L http://cran.stat.auckland.ac.nz/bin/macosx/el-capitan/base/R-$R_VERSION.pkg -o r.pkg
sudo installer -pkg r.pkg -target / -allowUntrusted
if [ ! -d /Library/Frameworks/R.framework  ]; then exit 1; fi

# install r packages
/usr/local/bin/R --slave -f install_inzight.R
if [ ! -d iNZightVIT/.library ]; then exit 1; fi
usr/local/bin/R --slave -e ".libPaths('iNZightVIT/.library'); requireNamespace('RGtk2')"

