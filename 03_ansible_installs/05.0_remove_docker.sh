#!/bin/bash
sudo apt purge -y --allow-change-held-packages containerd.io docker-engine docker docker.io docker-buildx-plugin docker-compose-plugin docker-ce docker-ce-cli docker-compose
sudo apt autoremove -y --allow-change-held-packages --purge containerd.io docker-engine docker docker.io docker-buildx-plugin docker-compose-plugin docker-ce docker-ce-cli docker-compose
sudo umount /var/lib/docker/
sudo rm -rf /etc/apparmor.d/docker /etc/docker /var/lib/docker /var/run/docker /var/run/docker.sock /usr/bin/docker-compose
sudo groupdel docker
echo 'Please reboot your machine to make sure changes applied'
