#!/bin/bash

set -e
set -u

if [ -d vigimage ]
then
 echo "The image is already mounted"
 exit 1
fi

echo "Mounting image"

kpartx -asv vigimage.img

mkdir vigimage

mount /dev/mapper/loop0p2 vigimage
mount /dev/mapper/loop0p1 vigimage/boot
