# Restart then snapshot into your own rootfs image
wsl -t Fedora-37
wsl --export Fedora-37 $HOME\Downloads\Fedora-37-wsl.tar
# The above can be run again if you prefer any updated rootfs
