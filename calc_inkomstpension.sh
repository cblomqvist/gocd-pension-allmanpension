#!/usr/bin/env bash
set -e
mkdir -p output
source ./fordelning.sh
inkomst=$(cat input/pensionsratter.txt)
res=$(echo "scale=0; (${inkomst} * ${INKOMSTPENSION}) / 1" | bc -l)
echo ${res} > output/inkomstpension.txt
