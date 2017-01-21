modprobe zram

echo lz4 > /sys/block/zram0/comp_algorithm
echo 16G > /sys/block/zram0/disksize

echo lz4 > /sys/block/zram1/comp_algorithm
echo 4G  > /sys/block/zram1/disksize

mkfs.ext4 -F /dev/zram0
mkfs.ext4 -F /dev/zram1

mount /dev/zram0 /mnt/zram/Downloads
mount /dev/zram1 /mnt/zram/Screenshots
