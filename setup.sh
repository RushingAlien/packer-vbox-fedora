#!/bin/bash
sleep 30
sudo dnf install nginx
sudo systemctl enable --now nginx