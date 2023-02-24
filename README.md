# Install-ansible
The scripts will help you to install ansible on WSL (Windows Subsystem for Linux).

- It installs and uses podman for pullinf a standard fedora:37 container
- Creates a custom Fedora-37 WSL root FS from podman container that is set as the default WSL image
- Backs up the updated Fedora-37 root FS in case restore is needed.

## Steps to install

Run *01.2_setup_picard_ubuntu-20.04-customizations.sh* script to update it with basic toolsets

Run the *02_install_ansible.sh* script in a restarted Fedora-37 WSL to install and set up Ansible


# Run ansible playbooks

Run:
- *ansible-playbook 03_ansible_installs/01_install_nodejs-lts_via_nvm.yml*
- *ansible-playbook 03_ansible_installs/02_install_sdkman_java_maven_etc.yml*
- *ansible-playbook 03_ansible_installs/03_install_firebase.yml*
- *03_ansible_installs/04_install_microshift.sh*
- ...etc

scripts in a restarted machine to set up some predefined Ansible-managed components
