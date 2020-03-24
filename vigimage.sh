#!/bin/bash

set -e
set -u

./viginit.sh
./vigiresize.sh
./vigimount.sh
./vigify.sh
./vigiunmount.sh
