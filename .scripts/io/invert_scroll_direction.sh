File=~/.Xmodmap
if grep -q '4 5' "$File"; then
    sed -i 's/4 5/5 4/g' "$File"
else
    sed -i 's/5 4/4 5/g' "$File"
fi
xmodmap $File
