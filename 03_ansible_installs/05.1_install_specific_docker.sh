#!/bin/bash
VERSION_STRING=5:20.10.17~3-0~ubuntu-focal
sudo apt install -y docker-ce=$VERSION_STRING docker-ce-cli=$VERSION_STRING containerd.io docker-buildx-plugin docker-compose-plugin docker-compose
sudo usermod -aG docker priet
sudo apt-mark hold docker-ce
sudo apt-mark hold docker-ce-cli
sudo apt-mark hold docker-ce-rootless-extras
sudo apt-mark hold docker-compose-plugin
echo 'Please reboot your machine to make sure changes applied'
