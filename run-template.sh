#!/bin/bash

defaults write org.R-project.R NSAppSleepDisabled -bool YES

export APPDIR="/Applications/iNZightVIT"
export INZAPP="{APP_NAME}"
open -a R "$APPDIR"
