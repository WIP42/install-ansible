# install-wsl-and-ansible
The scripts will help you to install ansible on WSL (Windows Subsystem for Linux).

It´s very nice to run your playbooks from your Windows System.

## Steps to install

#https://github.com/containers/podman/blob/main/docs/tutorials/podman-for-windows.md
Install PODMAN to enable getting Fedora-37 images pulled


Run the *01_setup_wsl.ps1* in Powershell as an administrator.

Then type *WSL* to enter Windows Subsystem CLI and execute the *02_install_ansible.sh*

For more information visit my blog on https://www.thomaspreischl.de


# In WSL, to run shell scripts, making them executable is useful:
chmod +x *.sh


# Run ansible playbooks
cd 03_ansible_installs

ansible-playbook 01_install_nodejs-lts_via_nvm.yml

...etc...
