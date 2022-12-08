# https://docs.microsoft.com/de-de/windows/wsl/install-win10

dism /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

dism /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# Restart with WSL2 as default

wsl --set-default-version 2

wsl -l


# Now to set up PODMAN and create our Fedora-37 image
podman machine init
podman machine ls
winget install -e --id RedHat.Podman-Desktop
podman pull fedora:37
podman run --name Fedora-37 fedora:37
podman export -o $HOME\Downloads\Fedora-37-rootfs.tar Fedora-37


# Import Fedora-37 base image into WSL
wsl --import Fedora-37 c:\distros\Fedora-37 $HOME\Downloads\Fedora-37-rootfs.tar
## Set as default
wsl -s Fedora-37
## Restart
wsl -t Fedora-37
