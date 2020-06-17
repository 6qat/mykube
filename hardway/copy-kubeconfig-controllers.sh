for instance in controller-0; do
  lxc file push admin.kubeconfig kube-controller-manager.kubeconfig kube-scheduler.kubeconfig ${instance}/root/
done
