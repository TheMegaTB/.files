#!/bin/sh
FOLDER=/tmp/screenshots
FILENAME=$(date +%F-%T)
FORMAT=png

mkdir -p ${FOLDER}

maim -s -c 1,0,0,0.4 -b 5 --format ${FORMAT} ${FOLDER}/${FILENAME}.${FORMAT}
