# https://multipass.run/docs/using-libvirt
# https://snapcraft.io/docs/interface-management

sudo snap install multipass --classic
sudo multipass set local.driver=libvirt
sudo snap connect multipass:libvirt

multipass launch --name server -c 2 --cloud-init ./cloud-config.yaml 20.04

