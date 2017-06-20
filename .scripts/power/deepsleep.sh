#!/bin/bash
wakealarm=$(cat /sys/class/rtc/rtc0/wakealarm)
if [ "$wakealarm" == "" ]; then
    # /usr/bin/pm-hibernate
	echo -n disk > /sys/power/state
else
    echo "" > /sys/class/rtc/rtc0/wakealarm
fi
