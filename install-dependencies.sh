#!/bin/bash

XQUARTZ_VERSION=2.7.11
R_VERSION=latest

# install gtk
# curl -L http://r.research.att.com/libs/GTK_2.24.17-X11.pkg -o gtk.pkg
# sudo installer -pkg gtk.pkg -target / -allowUntrusted

# install xquartz
# curl -L https://dl.bintray.com/xquartz/downloads/XQuartz-$XQUARTZ_VERSION.dmg -o xquartz.dmg
# hdiutil attach xquartz.dmg
# sudo installer -pkg /Volumes/XQuartz-$XQUARTZ_VERSION/XQuartz.pkg -target / -allowUntrusted

# install r
curl -L http://cran.stat.auckland.ac.nz/bin/macosx/el-capitan/base/R-$R_VERSION.pkg -o r.pkg
sudo installer -pkg r.pkg -target / -allowUntrusted

## to compile packages ...
curl -L http://cran.stat.auckland.ac.nz/bin/macosx/tools/clang-6.0.0.pkg -o clang.pkg
sudo installer -pkg clang.pkg -target / -allowUntrusted

curl -L http://cran.stat.auckland.ac.nz/bin/macosx/tools/gfortran-6.1.pkg -o gfortran.pkg
sudo installer -pkg gfortran.pkg -target / -allowUntrusted

