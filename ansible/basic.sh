#!/bin/bash

sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y
sudo apt install iptables apt-transport-https ca-certificates software-properties-common gnupg2 git htop neofetch net-tools socat conntrack curl wget containerd -y

# Kube needs some modules
sudo apt-get install ethtool linux-image-$(uname -r) -y
sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
apt-get install kubeadm kubelet kubectl -y

sudo systemctl stop containerd kubelet
sudo cp /root/containerd.service /lib/systemd/system/
sudo cp /root/kubelet.service /lib/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start containerd kubelet

# https://github.com/kubernetes-sigs/cri-tools/blob/master/docs/crictl.md
VERSION="v1.17.0"
wget https://github.com/kubernetes-sigs/cri-tools/releases/download/$VERSION/crictl-$VERSION-linux-amd64.tar.gz
sudo tar zxvf crictl-$VERSION-linux-amd64.tar.gz -C /usr/local/bin
rm -f crictl-$VERSION-linux-amd64.tar.gz

apt-get install kubeadm kubelet kubectl -y


