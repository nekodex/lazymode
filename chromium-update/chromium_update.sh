#!/usr/bin/env sh
BASE=http://commondatastorage.googleapis.com/chromium-browser-continuous/Mac
LATEST=`curl -s $BASE/LAST_CHANGE`

echo "Updating Chromium to $LATEST..."
echo "Downloading..."
curl -L -# $BASE/$LATEST/chrome-mac.zip -o /tmp/chrome-mac.zip
echo "Extracting and moving into place..."
cd /tmp && unzip -q chrome-mac.zip
rm -rf /Applications/Chromium.app/
mv chrome-mac/Chromium.app/ /Applications/
rm -rf /tmp/chrome-mac*
