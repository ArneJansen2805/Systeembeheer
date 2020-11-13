#!/bin/bash

SCRIPTS=/etc/scripts/
shopt -s expand_aliases
IFS=' '
IN=$1
chmod +x $1
IFS='.'
read -ra arr <<< "$IN"
IFS=' '
BLA=${arr[0]}
BLO='sh '$SCRIPTS${arr[0]}.sh
echo $BLA
echo $BLO
echo alias $BLA=$BLO >> ~/.bashrc
