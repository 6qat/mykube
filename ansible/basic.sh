#!/bin/bash

sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y
sudo apt install apt-transport-https ca-certificates software-properties-common gnupg2 git htop neofetch net-tools socat conntrack curl wget containerd -y
sudo systemctl stop containerd
sudo cp containerd.service /lib/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start containerd


