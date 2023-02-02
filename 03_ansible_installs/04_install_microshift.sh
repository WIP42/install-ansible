#based on: https://microshift.io/docs/getting-started/
# - name: "Install CRI-O"
sudo dnf module enable -y cri-o:1.21
sudo dnf install -y cri-o cri-tools
sudo systemctl enable crio --now
# - name: "Need copr plugin"
sudo dnf install -y dnf-plugins-core
# - name: "Deploying MicroShift"
sudo dnf copr enable -y @redhat-et/microshift
sudo dnf install -y microshift
sudo firewall-cmd --zone=trusted --add-source=10.42.0.0/16 --permanent
sudo firewall-cmd --zone=public --add-port=80/tcp --permanent
sudo firewall-cmd --zone=public --add-port=443/tcp --permanent
sudo firewall-cmd --zone=public --add-port=5353/udp --permanent
sudo firewall-cmd --reload
sudo systemctl enable microshift --now
# - name: "Install Clients"
curl -O https://mirror.openshift.com/pub/openshift-v4/$(uname -m)/clients/ocp/stable/openshift-client-linux.tar.gz
sudo tar -xf openshift-client-linux.tar.gz -C /usr/local/bin oc kubectl
# - name: "Copy Kubeconfig and test health"
mkdir ~/.kube
sudo cat /var/lib/microshift/resources/kubeadmin/kubeconfig > ~/.kube/config
echo 'Verify that MicroShift is running. Examples:'
echo 'oc get cs'
echo 'watch oc get pods -A'
