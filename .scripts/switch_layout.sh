if setxkbmap -print | grep -qi us; then 
    setxkbmap de
else 
    setxkbmap us
fi
