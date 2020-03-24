#!/bin/bash

set -e
set -u

if [ ! -d vigimage ]
then
 echo "The image is already unmounted"
 exit 1
fi

echo "Unmounting image"

sync

umount vigimage/boot
umount vigimage

kpartx -d vigimage.img

rmdir vigimage
