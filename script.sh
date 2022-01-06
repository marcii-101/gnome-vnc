#!/bin/bash
sudo apt update && sudo apt install ubuntu-gnome-desktop tigervnc-standalone-server tigervnc-viewer gnome-boxes -y
cat << EOF > ~/vnc.sh
startx /usr/bin/gnome-session --session=gnome -- /usr/bin/Xvnc -SecurityTypes None -rfbport 5900
EOF
chmod +x ~/vnc.sh
echo "Install complete!"
echo "Run ~/vnc.sh to start the server!"
