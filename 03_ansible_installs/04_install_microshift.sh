#!/bin/bash
#based on: https://microshift.io/docs/getting-started/
# - name: "Install Clients"
curl -O https://mirror.openshift.com/pub/openshift-v4/$(uname -m)/clients/ocp/stable/openshift-client-linux.tar.gz
sudo tar -xf openshift-client-linux.tar.gz -C /usr/local/bin oc kubectl
# - name: "Copy Kubeconfig and test health"
mkdir ~/.kube

echo '# 04 Openshift' >> ~/.bashrc
echo 'source <(oc completion bash)' >> ~/.bashrc
echo '' >> ~/.bashrc
