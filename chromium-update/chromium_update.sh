#!/usr/bin/env sh
BASE=http://build.chromium.org/f/chromium/snapshots/Mac/
LATEST=`curl -s $BASE/LATEST`

echo "Updating Chromium to $LATEST..."
echo "Downloading..."
curl -# $BASE$LATEST/chrome-mac.zip -o /tmp/chrome-mac.zip
echo "Extracting and moving into place..."
cd /tmp && unzip -q chrome-mac.zip
rm -rf /Applications/Chromium.app/
mv chrome-mac/Chromium.app/ /Applications/
rm -rf /tmp/chrome-mac*
