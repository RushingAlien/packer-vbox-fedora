#!/bin/bash
sudo dnf update -y
# install vbox guest additions
sudo mount -o loop,ro ~/VBoxGuestAdditions.iso /mnt/
sudo /mnt/VBoxLinuxAdditions.run
sudo umount /mnt/
rm -f ~/VBoxGuestAdditions.iso
# install and run nginx
sudo dnf -y install nginx
sudo systemctl enable --now nginx