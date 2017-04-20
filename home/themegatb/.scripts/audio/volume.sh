#!/bin/bash
DELTA="10%"
#PACTL="sudo -u themegatb /usr/bin/pulseaudio-ctl"
PACTL="sudo -u themegatb /usr/bin/pactl"
PACMD="sudo -u themegatb /usr/bin/pacmd"
for sink in $($PACMD list-sinks | grep index | awk -F ": " '{print $NF}'); do
    if [ "$1" == "-" ]; then
        $PACTL -- set-sink-volume "${sink}" "-${DELTA}"
    elif [ "$1" == "+" ]; then
    	$PACTL -- set-sink-volume "${sink}" "+${DELTA}"
    elif [ "$1" == "mute" ]; then
    	$PACTL -- set-sink-mute "${sink}" 1
    fi
done
#raw=$(pactl list | grep "	Sink: " | sed "s/[^0-9]//g;s/^$/-1/;")
#sinks=($raw)
#value="5%"
#
#if [ "$1" == "-" ]; then
#	change="-"
#elif [ "$1" == "+" ]; then
#	change="+"
#fi
#
#for sink in "${sinks[@]}"
#do
#	if [ "$1" == "mute" ]; then
#		pactl set-sink-mute $sink toggle
#	else
#		pactl set-sink-volume $sink $change$value
#	fi
#done
