#!/bin/bash
mkdir -p ~/ws/git.lpc.logius.nl/open/pgu/digilevering/brp/
cd ~/ws/git.lpc.logius.nl/open/pgu/digilevering/brp/
git clone https://git.lpc.logius.nl/logius/open/pgu/digilevering/brp/brp-connector.git
echo 'Please run ```cd ~/ws/git.lpc.logius.nl/open/pgu/digilevering/brp/brp-connector;clear;docker-compose up --build``` to test BRP (Connector) docker'
