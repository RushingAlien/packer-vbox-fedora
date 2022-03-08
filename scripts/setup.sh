#!/bin/bash
dnf check-update
# install vbox guest additions
mount -o loop,ro ~/VBoxGuestAdditions.iso /mnt/
/mnt/VBoxLinuxAdditions.run
umount /mnt/
rm -f ~/VBoxGuestAdditions.iso
# install and run nginx
dnf -y install nginx
systemctl enable --now nginx