#!/bin/bash

# opencv install
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev -y
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev -y
sudo apt-get install libxvidcore-dev libx264-dev -y
sudo apt-get install libgtk2.0-dev -y
sudo apt-get install libatlas-base-dev gfortran -y
sudo apt-get install python3-pip -y
pip3 install numpy==1.26.4
apt list python*opencv*
sudo apt install python3-opencv 
apt show python3-opencv

# vidgear install
pip3 install -U vidgear[asyncio]


