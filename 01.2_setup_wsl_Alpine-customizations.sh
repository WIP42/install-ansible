# Update Alpine with some tools
su -
apk add iputils
sysctl -w net.ipv4.ping_group_range="0 2000"
echo '#Add the following 2 lines to your $HOME\.wslconfig (outside in Windows to allow users to ping):'
echo '[wsl2]'
echo 'kernelCommandLine = sysctl.net.ipv4.ping_group_range=\"0 2000\"'
echo ''

apk add findutils ncurses lsof
apk add vim
apk add git
apk add bash-completion
apk add curl
