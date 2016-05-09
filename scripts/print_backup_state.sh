#!/bin/bash
STATE=$(cat /etc/borg/state)

if [ "$STATE" == "0" ]; then
	echo "  "
elif [ "$STATE" == "1" ]; then
	echo "  "
elif [ "$STATE" == "2" ]; then
	echo "  "
else
	echo "  "
fi
