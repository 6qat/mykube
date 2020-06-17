# https://hub.helm.sh/charts/rimusz/hostpath-provisioner
# https://github.com/rimusz/charts/tree/master/stable/hostpath-provisioner

helm repo add brigade	https://brigadecore.github.io/charts             
helm repo add stable 	https://kubernetes-charts.storage.googleapis.com/
helm repo add rimusz https://charts.rimusz.net

helm install rimusz/hostpath-provisioner --version 0.2.9 --generate-name

