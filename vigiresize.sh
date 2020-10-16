#!/bin/bash

set -e
set -u

if [ ! -f vigimage.img ]
then
 echo "The image is missing"
 exit 1
fi

echo "Resizing image"

dd if=/dev/zero bs=1M count=1000 >> vigimage.img
parted vigimage.img resizepart 2 100%
kpartx -asv vigimage.img
e2fsck -f /dev/mapper/loop0p2
resize2fs /dev/mapper/loop0p2
kpartx -d vigimage.img
