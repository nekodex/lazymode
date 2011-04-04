#!/bin/sh
BASE=http://build.chromium.org/f/chromium/snapshots/chromium-rel-mac/

cd /tmp
curl -O $BASE`curl $BASE/LATEST`/chrome-mac.zip
unzip chrome-mac.zip 
cd chrome-mac/
rm -rf /Applications/Chromium.app/
ditto Chromium.app/ /Applications/Chromium.app/
cd ..
rm -rf chrome-mac*
