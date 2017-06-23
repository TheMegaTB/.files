#!/bin/sh
echo $(/usr/sbin/iw wlp1s0 link | grep -oP "SSID: \K.*" )
