# Install-ansible
The scripts will help you to install ansible on WSL (Windows Subsystem for Linux).

- It installs and uses podman for pullinf a standard fedora:37 container
- Creates a custom Fedora-37 WSL root FS from podman container that is set as the default WSL image
- Backs up the updated Fedora-37 root FS in case restore is needed.

## Steps to install

#https://github.com/containers/podman/blob/main/docs/tutorials/podman-for-windows.md
Install PODMAN to enable getting Fedora-37 images pulled


Run the:
- *00_setup_prerequisite_tools.ps1*
- *01_setup_wsl.ps1*

scripts in Powershell as an administrator.

Run *01.2_setup_wsl_Fedora-37-customizations.sh* script in a restarted Fedora-37 WSL to update it with basic toolsets

Run the:
- *01.3_setup_wsl_Fedora-37-customizations.ps1*
- *01.4_setup_wsl_Fedora-37-save_snapshot.ps1*

scripts in Powershell to finish WSL setup and save the rootfs snapshot into $HOME\Downloads\Fedora-37-wsl.tar

*01.5_setup_wsl_Fedora-37-OPTIONAL-restore_snapshot.ps1* script can be used to restore from this image

Run the *02_install_ansible.sh* script in a restarted Fedora-37 WSL to install and set up Ansible


# Run ansible playbooks

Run:
- *ansible-playbook 03_ansible_installs/01_install_nodejs-lts_via_nvm.yml*
- *ansible-playbook 03_ansible_installs/02_install_sdkman_java_maven_etc.yml*
- *ansible-playbook 03_ansible_installs/03_install_firebase.yml*
- *03_ansible_installs/04_install_microshift.sh*
- *sudo ansible-playbook 05_install_helm.yml -f 10 --verbose*

scripts in a restarted Fedora-37 WSL set up some predefined Ansible-managed components
