#!/bin/bash
PACTL="sudo -u themegatb /usr/bin/pulseaudio-ctl"
if [ "$1" == "-" ]; then
	$PACTL down
elif [ "$1" == "+" ]; then
	$PACTL up
elif [ "$1" == "mute" ]; then
	$PACTL mute
fi

#raw=$(pactl list | grep "	Sink: " | sed "s/[^0-9]//g;s/^$/-1/;")
#sinks=($raw)
#value="5%"
#
#if [ "$1" == "-" ]; then
#	change="-"
#elif [ "$1" == "+" ]; then
#	change="+"
#fi

#for sink in "${sinks[@]}"
#do
#	if [ "$1" == "mute" ]; then
#		pactl set-sink-mute $sink toggle
#	else
#		pactl set-sink-volume $sink $change$value
#	fi
#done
