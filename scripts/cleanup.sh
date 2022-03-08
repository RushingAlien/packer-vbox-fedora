#!/bin/bash -eux
sudo dnf -y clean all
# Zero out the rest of the free space using dd, then delete the written file.
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

sync