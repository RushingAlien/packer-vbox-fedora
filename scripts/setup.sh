#!/bin/bash
dnf check-update
# install vbox guest additions
# mount -o loop,ro ~/VBoxGuestAdditions.iso /mnt/
# /mnt/VBoxLinuxAdditions.run
# umount /mnt/
# rm -f ~/VBoxGuestAdditions.iso
# install and run nginx
dnf -y install nginx
systemctl enable --now nginx
dnf -y clean all
# Zero out the rest of the free space using dd, then delete the written file.
#dd if=/dev/zero of=/EMPTY bs=1M
#rm -f /EMPTY
sync