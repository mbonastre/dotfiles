#!/bin/sh

sudo bash -c "DEBIAN_FRONTEND=noninteractive apt-get -y -q update" &&
sudo bash -c "DEBIAN_FRONTEND=noninteractive apt-get -y -q dist-upgrade" &&
sudo bash -c "DEBIAN_FRONTEND=noninteractive apt-get -y -q autoremove" &&
sudo bash -c "DEBIAN_FRONTEND=noninteractive apt-get -y -q autoclean"

