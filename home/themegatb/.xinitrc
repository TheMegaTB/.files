#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

echo "HI"
xrandr > /tmp/xrandrout

#sh ~/.fehbg &
xbindkeys
unclutter &
redshift -l 51:10 -t 5500:2800 &
numlockx &
#pulseaudio -D &
compton -c -r8 -l-12 -t-8  -G  -f -D30 -I0.45 -O0.45  --paint-on-overlay --unredir-if-possible  --backend glx --glx-no-stencil --glx-no-rebind-pixmap &
rescuetime &
#xbacklight -time 1000 -set 7 &
#xcompmgr -c -C -t-5 -l-5 -r4.2 -o.55 &
#perl ~/.xSwipe/xSwipe.pl -n -d 0.5 1>/dev/null 2>&1 &
if [ -f "$HOME/.set_dpi" ]; then ${HOME}/.set_dpi; fi

exec i3
