#!/bin/bash
mkdir -p ~/ws/git.lpc.logius.nl/cor_microservices/backend
cd ~/ws/git.lpc.logius.nl/cor_microservices/backend
git clone https://git.lpc.logius.nl/logius/open/pgu/digikoppeling/cor_microservices/backend/cor_backend_services.git
echo 'Please run ```cd ~/ws/git.lpc.logius.nl/cor_microservices/backend/cor_backend_services;clear;./build_all.sh -md``` to test COR docker'
