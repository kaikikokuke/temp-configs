#!/bin/bash
#
set -e

apt-get install apt-transport-https

curl -fsSL https://github.com/kaikikokuke/temp-configs/raw/main/xenial.gpg | apt-key add -
curl -fsSL https://github.com/kaikikokuke/temp-configs/raw/main/xenial.list | tee /etc/apt/sources.list.d/tailscale.list

apt-get update 
apt-get install tailscale

tailscale up
