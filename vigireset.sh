#!/bin/bash

set -e
set -u

if [ ! -f image.zip ]
then
 wget https://www.vigibot.com/raspbian/image.zip
 unzip image.zip
 mv *.img image.img
 cp image.img vigimage.img
else
 echo "Reusing image.img"
 cp image.img vigimage.img
fi
