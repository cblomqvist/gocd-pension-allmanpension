#!/usr/bin/env bash
set -e
mkdir -p output

export PREMIEPENSION=0.135
export INKOMSTPENSION=0.865

echo ${PREMIEPENSION} > output/premiepension.txt
echo ${INKOMSTPENSION} > output/inkomstpension.txt
