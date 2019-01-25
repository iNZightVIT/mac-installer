#!/bin/bash

XQUARTZ_VERSION=2.7.11
R_VERSION=latest

# install gtk
curl -L http://r.research.att.com/libs/GTK_2.24.17-X11.pkg -o gtk.pkg
# sudo installer -pkg gtk.pkg -target / -allowUntrusted

# install xquartz
curl -L https://dl.bintray.com/xquartz/downloads/XQuartz-$XQUARTZ_VERSION.dmg -o xquartz.dmg
# hdiutil attach xquartz.dmg


# install r

echo "test" >> test.txt
