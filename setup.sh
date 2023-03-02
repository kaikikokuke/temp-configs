#!/bin/bash
#
set -e

wget https://github.com/kaikikokuke/temp-configs/raw/main/focal.noarmor.gpg -O /usr/share/keyrings/tailscale-archive-keyring.gpg
wget https://github.com/kaikikokuke/temp-configs/raw/main/focal.tailscale-keyring.list -O /etc/apt/sources.list.d/tailscale.list

apt-get update 

apt-install tailscale

echo "All done!"
