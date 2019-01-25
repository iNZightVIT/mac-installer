#!/bin/bash

XQUARTZ_VERSION=2.7.11
R_VERSION=latest

# install r
curl -L http://cran.stat.auckland.ac.nz/bin/macosx/el-capitan/base/R-$R_VERSION.pkg -o r.pkg
sudo installer -pkg r.pkg -target / -allowUntrusted

/usr/local/bin/R --slave -f install_inzight.R
