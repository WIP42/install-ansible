# Create default user
dnf install -y passwd cracklib-dicts
useradd -G wheel pr
passwd pr


# Update Fedora-37 with some tools
sudo dnf reinstall -y shadow-utils
sudo dnf install -y procps-ng iputils
sudo sysctl -w net.ipv4.ping_group_range="0 2000"
echo '#Add the following 2 lines to your $HOME\.wslconfig (outside in Windows to allow users to ping):'
echo '[wsl2]'
echo 'kernelCommandLine = sysctl.net.ipv4.ping_group_range=\"0 2000\"'
echo ''

sudo dnf -y install iproute findutils ncurses lsof
sudo dnf install -y vim
sudo dnf install -y git

# Base images have no man pages, add those:
grep -v nodocs /etc/dnf/dnf.conf | sudo tee /etc/dnf/dnf.conf
sudo dnf install -y man man-pages
for pkg in $(dnf repoquery --installed --qf "%{name}"); do sudo dnf reinstall -qy $pkg; done

# Cleanup so we can snapshot our image
sudo dnf clean all
