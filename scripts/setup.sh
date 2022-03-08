#!/bin/bash
sudo dnf update -y;
sudo mount -o loop,ro ~/VBoxGuestAdditions.iso /mnt/;
sudo /mnt/VBoxLinuxAdditions.run;
sudo umount /mnt/;
rm -f ~/VBoxGuestAdditions.iso;
sudo dnf -y install nginx
sudo systemctl enable --now nginx;