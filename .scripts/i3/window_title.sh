#!/bin/sh
echo $(xprop -id $(xprop -root _NET_ACTIVE_WINDOW | cut -d ' ' -f 5) WM_NAME | sed -e 's/.*"\(.*\)".*/\1/')
