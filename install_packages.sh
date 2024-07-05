#!/bin/bash

# opencv install
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install libopenblas-dev -y
sudo apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev -y
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev -y
sudo apt-get install libxvidcore-dev libx264-dev -y
sudo apt-get install libgtk2.0-dev -y
sudo apt-get install libatlas-base-dev gfortran -y
sudo apt-get install python3-pip -y
pip3 install numpy==1.26.4
apt list python*opencv*
sudo apt install python3-opencv -y
apt show python3-opencv
echo "CV2 installation complete."

# vidgear install
#pip3 install -U vidgear[asyncio]
pip3 install --no-deps vidgear
pip3 install colorlog
pip3 install tqdm
pip3 install pyzmq
echo "Vidgear installation complete."

# anydesk install
LATEST_URL=$(wget -qO- https://anydesk.com/en/downloads/Raspberry%20Pi | grep -oP '(?<=href=")[^"]+anydesk_[^"]+armhf.deb' | head -n 1)
LATEST_URL="https://download.anydesk.com${LATEST_URL}"
wget $LATEST_URL -O anydesk_latest_armhf.deb
sudo dpkg -i anydesk_latest_armhf.deb
sudo apt --fix-broken install -y
rm anydesk_latest_armhf.deb
echo "Anydesk installation complete."

# Teamviewer install
wget https://download.teamviewer.com/download/linux/teamviewer-host_armhf.deb -O teamviewer_latest_armhf.deb
sudo dpkg -i teamviewer_latest_armhf.deb
sudo apt --fix-broken install -y
rm teamviewer_latest_armhf.deb
echo "TeamViewer installation complete."
