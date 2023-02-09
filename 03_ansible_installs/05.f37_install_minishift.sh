#
# - name: "Install Docker CE"
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh --dry-run
rm get-docker.sh
sudo usermod -aG docker $USER && newgrp docker
# - name: "Test docker"
echo 'sudo systemctl start docker'
echo 'sudo docker run hello-world'
# - name: "Deploying minikube"
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm
sudo dnf install minikube-latest.x86_64.rpm
# - name: "Test health and run"
echo 'minikube start'
echo 'minikube addons enable metrics-server'
echo 'minikube dashboard'
echo 'kubectl get po -A'
echo 'minikube pause'
echo 'minikube unpause'
echo 'minikube stop'
echo 'minikube delete --all'

echo '# 05 Kubernetes' >> ~/.bash_profile
echo 'source <(kubectl completion bash)' >> ~/.bash_profile
echo 'alias k=kubectl' >> ~/.bash_profile
echo 'complete -o default -F __start_kubectl k' >> ~/.bash_profile
echo '' >> ~/.bash_profile
