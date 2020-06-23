# https://multipass.run/docs/using-libvirt
# https://snapcraft.io/docs/interface-management

sudo snap install multipass --classic
sudo multipass set local.driver=libvirt
sudo snap connect multipass:libvirt

multipass launch --name server -c 2 --cloud-init ./cloud-config.yaml 20.04

multipass launch -c 2 -m 2G --cloud-init ./cloud-config.yaml -n master-0 18.04
