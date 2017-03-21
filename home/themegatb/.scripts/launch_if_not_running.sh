#!/bin/sh
echo $(date) >> /tmp/linrcall
TARGET=$1

pidof $(readlink -f $(which ${TARGET})) -x

ERRLVL=$?

echo $ERRLVL

if [ $ERRLVL -eq 1 ]; then
    echo "Alternative method"
    pgrep -f $(which ${TARGET})
    ERRLVL=$?
    echo $ERRLVL
fi

if [ $ERRLVL -eq 1 ]; then
    ${TARGET}
fi

echo ${ERRLVL} >> /tmp/linrcall

[ $ERRLVL -eq 1 ] exit 0 || exit 1
