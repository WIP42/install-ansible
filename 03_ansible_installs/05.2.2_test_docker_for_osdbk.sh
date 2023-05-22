#!/bin/bash
mkdir -p ~/ws/gitlab.com/logius/beveiligd-koppelvlak-extern
cd ~/ws/gitlab.com/logius/beveiligd-koppelvlak-extern
git clone https://gitlab.com/logius/beveiligd-koppelvlak-extern/ebms-core.git
mkdir -p ~/ws/git.lpc.logius.nl/open/pgu/osdbk/lpc/development
cd ~/ws/git.lpc.logius.nl/open/pgu/osdbk/lpc/development
git clone https://git.lpc.logius.nl/logius/open/pgu/osdbk/lpc/development/docker-compose-environment.git
echo 'Please run ```cd ~/ws/gitlab.com/logius/beveiligd-koppelvlak-extern/ebms-core;clear;docker-compose --env-file ~/ws/git.lpc.logius.nl/open/pgu/osdbk/lpc/development/docker-compose-environment/.env up --build``` to test OSDBK (EbMS-core) docker'
