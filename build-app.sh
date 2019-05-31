#!/bin/bash
set -ev

APP=iNZightVIT
INZ=$APP/iNZight.app/Contents
VIT=$APP/VIT.app/Contents
UPD=$APP/Update.app/Contents
UNI=$APP/Uninstall.app/Contents

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

mkdir build
mv $APP build

## create DMG
create-dmg \
    --volname "iNZightVIT Installer" \
    --volicon "icons/inzight.icns" \
    --window-pos 200 120 \
    --window-size 800 400 \
    --icon-size 100 \
    --icon "$APP" 200 190 \
    --hide-extension "$APP" \
    --app-drop-link 600 185 \
    "iNZightVIT_mac.dmg" \
    "build/"

ls -al
