#! /usr/bin/bash

export DISPLAY=:0
export XAUTHORITY=/home/themegatb/.Xauthority

function connect(){
    xrandr --output DP1 --right-of eDP1 --preferred --primary --output eDP1 --preferred 
}
  
function disconnect(){
      xrandr --output DP1 --off
}
   
xrandr | grep -w "DP1 connected" &> /dev/null && connect || disconnect
~/.fehbg
