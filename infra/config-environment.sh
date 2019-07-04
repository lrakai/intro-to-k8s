apt update
apt-get install --only-upgrade kubeadm=1.15.0-00 kubectl=1.15.0-00 kubelet=1.15.0-00 kubernetes-cni=0.7.5-00 -y -f
apt-get install ec2-instance-connect

# update master components
if [ -e /etc/kubernetes/admin.conf ] ; then
    # Can only upgrade 1 minor version at a time
    snap install --channel 1.14/stable --classic kubeadm
    /snap/kubeadm/current/kubeadm upgrade apply v1.14.3 -f
    kubeadm upgrade apply v1.15.0 -f
fi