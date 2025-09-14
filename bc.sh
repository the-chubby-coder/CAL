#!/bin/bash
echo "
█▀▀ ▄▀█ █░░
█▄▄ █▀█ █▄▄"
echo "this is a script that installs BC for you"
echo "do you wish to continue? (ctrl+c= no   passowrd= yes) bc is required to run CAL"
sudo apt install bc
apk add bc
bash cal2.sh
clear