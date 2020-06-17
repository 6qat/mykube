#for instance in worker-0 worker-1 worker-2; do
#  lxc file push ca.pem ${instance}-key.pem ${instance}.pem ${instance}:/root/
#done

lxc file push ca.pem worker-0-key.pem worker-0.pem worker-0/root/
lxc file push ca.pem worker-1-key.pem worker-1.pem worker-1/root/
lxc file push ca.pem worker-2-key.pem worker-2.pem worker-2/root/
