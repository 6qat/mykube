VERSION="v1.18.4"

wget -q --show-progress --https-only --timestamping -P bin/ \
	  	https://storage.googleapis.com/kubernetes-release/release/${VERSION}/bin/linux/amd64/kube-apiserver \
	    	https://storage.googleapis.com/kubernetes-release/release/${VERSION}/bin/linux/amd64/kube-controller-manager \
	      	https://storage.googleapis.com/kubernetes-release/release/${VERSION}/bin/linux/amd64/kube-scheduler \
	        https://storage.googleapis.com/kubernetes-release/release/${VERSION}/bin/linux/amd64/kubectl \
		https://storage.googleapis.com/kubernetes-release/release/${VERSION}/bin/linux/amd64/kube-proxy \
		https://storage.googleapis.com/kubernetes-release/release/${VERSION}/bin/linux/amd64/kubelet \
		https://storage.googleapis.com/kubernetes-release/release/${VERSION}/bin/linux/amd64/kubeadm 

chmod a+x bin/*
