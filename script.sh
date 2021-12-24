#!/bin/bash
sudo apt update && sudo apt install ubuntu-gnome-desktop tigervnc-standalone-server tigervnc-viewer -y
cat << EOF > ~/vnc.sh
startx /usr/bin/gnome-session --session=gnome -- /usr/bin/Xvnc :1 -SecurityTypes None
EOF
