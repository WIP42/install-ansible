#!/bin/bash
# - name: "Install Docker CE"
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh
rm get-docker.sh
sudo usermod -aG docker ${USER}
# - name: "Test docker"
echo 'sudo systemctl start docker'
echo 'sudo docker run hello-world'
sudo setfacl --modify user:${USER}:rw /var/run/docker.sock
sudo getfacl -e /var/run/docker.sock
# - name: "Deploying minikube"
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
sudo dpkg -i minikube_latest_amd64.deb
# - name: "Test health and run"
echo 'minikube start'
echo 'minikube addons enable metrics-server'
echo 'minikube dashboard'
echo 'kubectl get po -A'
echo 'minikube pause'
echo 'minikube unpause'
echo 'minikube stop'
echo 'minikube delete --all'

echo '# 05 Kubernetes' >> ~/.bashrc
echo 'source <(kubectl completion bash)' >> ~/.bashrc
echo 'alias k=kubectl' >> ~/.bashrc
echo 'complete -o default -F __start_kubectl k' >> ~/.bashrc
echo '' >> ~/.bashrc
echo '# More subcommand completions in ~/.bash_completion' >> ~/.bashrc
echo '' >> ~/.bashrc

git clone https://github.com/cykerway/complete-alias.git ~/ws/github.com/cykerway
echo '. ~/ws/github.com/cykerway/complete-alias/complete_alias' >> ~/.bash_completion
echo '' >> ~/.bash_completion
echo "alias ko1='kubectl --kubeconfig ~/.kube/lpc-lpc-otap-ot-t-az1.yaml -n dgk-ontwikkel'" >> ~/.bash_completion
echo "alias kt1='kubectl --kubeconfig ~/.kube/lpc-lpc-otap-ot-t-az1.yaml -n dgk-test'" >> ~/.bash_completion
echo "alias ka1='kubectl --kubeconfig ~/.kube/lpc-lpc-otap-a01-a-az1.yaml -n dgk-acceptatie'" >> ~/.bash_completion
echo "alias kpp1='kubectl --kubeconfig ~/.kube/lpc-lpc-otap-ap-p-az1.yaml -n dgk-preproductie'" >> ~/.bash_completion
echo "alias kp1='kubectl --kubeconfig ~/.kube/lpc-lpc-otap-ap-p-az1.yaml -n dgk-productie'" >> ~/.bash_completion
echo '' >> ~/.bash_completion
echo "alias ko2='kubectl --kubeconfig ~/.kube/lpc-lpc-otap-ot-t-az2.yaml -n dgk-ontwikkel'" >> ~/.bash_completion
echo "alias kt2='kubectl --kubeconfig ~/.kube/lpc-lpc-otap-ot-t-az2.yaml -n dgk-test'" >> ~/.bash_completion
echo "alias ka2='kubectl --kubeconfig ~/.kube/lpc-lpc-otap-a01-a-az2.yaml -n dgk-acceptatie'" >> ~/.bash_completion
echo "alias kpp2='kubectl --kubeconfig ~/.kube/lpc-lpc-otap-ap-p-az2.yaml -n dgk-preproductie'" >> ~/.bash_completion
echo "alias kp2='kubectl --kubeconfig ~/.kube/lpc-lpc-otap-ap-p-az2.yaml -n dgk-productie'" >> ~/.bash_completion
echo '' >> ~/.bash_completion
echo 'complete -o default -F _complete_alias "${!BASH_ALIASES[@]}"' >> ~/.bash_completion
