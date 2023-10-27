# Restart then snapshot into your own rootfs image
wsl -t Alpine
wsl --export Alpine $HOME\Downloads\Alpine-wsl.tar
# The above can be run again if you prefer any updated rootfs
