#!/bin/bash

# install gtk
wget http://r.research.att.com/libs/GTK_2.24.17-X11.pkg -p gtk.pkg
installer -pkg gtk.pkg -target /

# install xquartz
# 
# install r

echo "test" >> test.txt