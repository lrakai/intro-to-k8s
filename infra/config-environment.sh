apt update
apt-get install --only-upgrade kubeadm=1.15.0-00 kubectl=1.15.0-00 kubelet=1.15.0-00 kubernetes-cni=0.7.5-00 -y -f
apt-get install ec2-instance-connect