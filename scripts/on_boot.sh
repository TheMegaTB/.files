printf "\x07\x00\x00\x00\x00" > /sys/firmware/efi/efivars/SystemAudioVolume-7c436110-ab2a-4bbb-a880-fe41995c9f82 # Mute startup chime
rm -rf /home/themegatb/Pictures/Screenshots/* # Remove all screenshots
find /home/themegatb/Downloads/* -mtime +5 -exec rm {} \; # Delete all downloaded files that are >5 days old
for file in /var/log/*; do tail -n 100 $file > $file; done # Truncate logs to 100 lines
