#
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

echo '# 05 Kubernetes' >> ~/.profile
echo 'source <(kubectl completion bash)' >> ~/.profile
echo 'alias k=kubectl' >> ~/.profile
echo 'complete -o default -F __start_kubectl k' >> ~/.profile
echo '' >> ~/.profile
