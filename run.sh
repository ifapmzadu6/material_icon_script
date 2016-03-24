#!/bin/bash

DIR=$(cd $(dirname $0); pwd)

mkdir output

for path in $(ls -l | awk '$1 ~ /d/ {print $9 }')
do
    cp ${DIR}/${path}/drawable-xxxhdpi/*_black_48dp.png ./output
done

