#!/bin/bash
raw=$(pactl list | grep "	Sink: " | sed "s/[^0-9]//g;s/^$/-1/;")
sinks=($raw)
output=""
x=0
for key in "${!sinks[@]}"
do
	sink="${sinks[$key]}"
	vol=$(/home/themegatb/scripts/getvolume.pl $sink)
	if [ "${#sinks[@]}" -gt "1" ] && [ "$key" -gt "0" ]; then
		#output="$output  "
		output="$output  $sink: "
	fi
	output="$output  $vol"
done

if [ "$BLOCK_BUTTON" == "1" ]; then
  pavucontrol &
elif [ "$BLOCK_BUTTON" == "5" ]; then
  /etc/acpi/handlers/volume +
elif [ "$BLOCK_BUTTON" == "4" ]; then
  /etc/acpi/handlers/volume -
fi


echo $output
