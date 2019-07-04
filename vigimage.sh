#!/bin/bash

set -e
set -u

./viginit.sh
./vigimount.sh
./vigify.sh
./vigiunmount.sh
