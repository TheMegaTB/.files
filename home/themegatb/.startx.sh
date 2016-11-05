if [ -z "$DISPLAY" ]; then
	if [ "$(tty)" == "/dev/tty1" ]; then
		startx > /dev/null 2>&1
	fi
fi
