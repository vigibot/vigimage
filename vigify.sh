#!/bin/bash

set -e
set -u

if [ ! -d vigimage ]
then
 exit 1
fi

echo "Updating image"

cp /usr/bin/qemu-arm-static vigimage/usr/bin

wget https://www.vigibot.com/vigiclient/install.sh -P vigimage/tmp -N

cat << EOF | chroot vigimage
apt update
apt upgrade -y
/tmp/install.sh
EOF
