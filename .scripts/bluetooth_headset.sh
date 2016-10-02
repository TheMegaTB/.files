#!/bin/bash
sink_addr="10_4F_A8_6D_F0_FB"
mac_addr="10:4F:A8:6D:F0:FB"
alsa_card="alsa_card.pci-0000_00_1b.0"
if bluetoothctl <<< "info $mac_addr" | grep -qi "Connected: no"; then
      bluetoothctl <<< "connect $mac_addr"
      sleep 6s
      pactl set-card-profile $alsa_card input:analog-stereo
      pactl set-card-profile bluez_card.$sink_addr a2dp_sink
      pactl set-sink-volume bluez_sink.$sink_addr 50%
else
      bluetoothctl <<< "disconnect $mac_addr"
      pactl set-card-profile $alsa_card output:analog-stereo+input:analog-stereo
fi
