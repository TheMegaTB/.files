#!/bin/bash
output=""

COUNT=$(yaourt -Qu | wc -l)

if [ ${COUNT} -gt 20 ]; then
    output="  "
fi

echo $output
