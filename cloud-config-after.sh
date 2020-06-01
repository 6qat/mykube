echo """{ \"exec-opts\": [\"native.cgroupdriver=systemd\"], \"log-driver\": \"json-file\", \"log-opts\": { \"max-size\": \"100m\" }, \"storage-driver\": \"overlay2\"}""" > /etc/docker/daemon.json

systemctl restart docker

kubeadm init --pod-network-cidr=10.244.0.0/16

# Abaixo como usuario normal (ubuntu)
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml

