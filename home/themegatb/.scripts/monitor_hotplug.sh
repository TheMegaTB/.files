#! /usr/bin/bash

export DISPLAY=:0
export XAUTHORITY=/home/themegatb/.Xauthority

EXT="HDMI1"
INT="eDP1"

function connect(){
    echo "connect"
    xrandr --output ${EXT} --right-of ${INT} --preferred --primary --output ${INT} --preferred 
}
  
function disconnect(){
    echo "disconnect"
    xrandr --output ${EXT} --off
}
   
xrandr | grep -w "$EXT connected" &> /dev/null && connect || disconnect
~/.fehbg
