#!/bin/sh

sudo apt-get -y -q update &&
sudo apt-get -y -q dist-upgrade &&
sudo apt-get -y -q autoremove &&
sudo apt-get -y -q autoclean

