#!/bin/bash
set -ev

APP=iNZightVIT
INZ=$APP/iNZight/Contents
VIT=$APP/VIT/Contents
UPD=$APP/Update/Contents
UNI=$APP/Uninstall/Contents

## scaffold app
mkdir -p $INZ/{MacOS,Resources}
mkdir -p $VIT/{MacOS,Resources}
mkdir -p $UPD/{MacOS,Resources}
mkdir -p $UNI/{MacOS,Resources}

## add icons
cp icons/inzight.icns $INZ/Resources/
cp icons/vit.icns $VIT/Resources/
cp icons/update.icns $UPD/Resources/

## add scripts
sed -e 's/{APP_NAME}/iNZight/g' run-template.sh > $INZ/MacOS/iNZight
sed -e 's/{APP_NAME}/VIT/g' run-template.sh > $VIT/MacOS/VIT
sed -e 's/{APP_NAME}/Update/g' run-template.sh > $UPD/MacOS/Update

chmod +x $INZ/MacOS/iNZight
chmod +x $VIT/MacOS/VIT
chmod +x $UPD/MacOS/Update

## uninstall is different


## add .Rprofile script
cp run_inzight.R $APP/.Rprofile

