#!/bin/bash
EMAIL=#<email>
APIKEY=#<apikey>
ENDPOINT=http://puush.me

if [ $# -eq 1 ]; then
  curl -s -F "z=lol" -F "e=$EMAIL" -F "k=$APIKEY" -F f=@$1 $ENDPOINT/api/up/ | cut -d',' -f 2
else
  echo "Usage: puu.sh <file>"
fi
