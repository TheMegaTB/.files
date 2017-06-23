#!/bin/sh
#KERNEL="4.9.16-gentoo"
KERNEL=$1
KERNEL_CMDLINE="dolvm rootfstype=ext4 root=/dev/mapper/gentoo-root real_resume=UUID=b3a1056a-0399-4905-9563-fd1d0874ea7e i915.preliminary_hw_support=1 i915.modeset=1"

if [ "$KERNEL" == "" ]; then
	echo "Please provide a kernel name"
	exit 1
fi

#efibootmgr -c -d /dev/nvme0n1 -p 1 -L "Gentoo ($KERNEL-dracut)" -l "\EFI\gentoo\vmlinuz-$KERNEL" -u "$KERNEL_CMDLINE initrd=\EFI\gentoo\initramfs-$KERNEL.img"
efibootmgr -c -d /dev/nvme0n1 -p 1 -L "Gentoo ($KERNEL)" -l "\EFI\gentoo\vmlinuz-$KERNEL" -u "$KERNEL_CMDLINE initrd=\EFI\gentoo\initramfs-genkernel-x86_64-$KERNEL"
