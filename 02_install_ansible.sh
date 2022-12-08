# Install and test ansible install
## https://www.ansiblepilot.com/articles/how-to-install-ansible-in-fedora-37/
sudo dnf update
sudo dnf list available ansible
sudo dnf install -y ansible
sudo "rpm -qa | grep ansible"
sudo dnf list ansible
