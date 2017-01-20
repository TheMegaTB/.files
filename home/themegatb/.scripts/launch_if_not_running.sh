TARGET=$1

pidof ${TARGET} -x

ERRLVL=$?

echo $ERRLVL

if [ $ERRLVL -eq 0 ]; then
    echo "Already running."
    exit 1
else
    ${TARGET}
    exit 0
fi
