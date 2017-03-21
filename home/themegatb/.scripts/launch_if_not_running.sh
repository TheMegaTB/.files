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

if [ $ERRLVL -eq 0 ]; then
    echo "Already running."
    exit 1
else
    ${TARGET}
    exit 0
fi
