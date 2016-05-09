#!/bin/bash

declare -a repos=("/mnt/backup/local/archbook" "themegatb@homeserver:/mnt/backups/archbook")

echo "Creating Backup..." > /etc/borg/info
echo 0 > /etc/borg/state
source /etc/borg/passphrase
for repo in ${repos[@]}; do
	echo "Backing up to $repo"
	borg create -p --compression lzma,9 --exclude-caches --exclude-from /etc/borg/exclude --exclude-if-present ".gitignore" $repo::$(date +"%s") /
done
BACKUPDATE=$(date +"%d-%M %T")
echo "Cleaning up..." > /etc/borg/info
echo 1 > /etc/borg/state
for repo in ${repos[@]}; do
	echo "Cleaning up $repo"
	borg prune -H 24 -d 7 -w 4 -m 6 -y 6 --keep-within 2d --save-space $repo
done
echo "Last Backup: $BACKUPDATE" > /etc/borg/info
echo 2 > /etc/borg/state
