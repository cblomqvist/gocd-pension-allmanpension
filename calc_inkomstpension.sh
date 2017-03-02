#!/usr/bin/env bash
set -e
mkdir -p output/inkomstpension
source ./fordelning.sh
inkomst=$(cat input/pensionsratter/res.txt)
res=$(echo "scale=0; (${inkomst} * ${INKOMSTPENSION}) / 1" | bc -l)
echo ${res} > output/inkomstpension/res.txt
