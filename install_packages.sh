#!/bin/bash

# opencv install
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev 
sudo apt-get install libxvidcore-dev libx264-dev
sudo apt-get install libgtk2.0-dev
sudo apt-get install libatlas-base-dev gfortran
sudo apt-get install python3-pip
pip3 install numpy
apt list python*opencv*
sudo apt install python3-opencv 
apt show python3-opencv

# vidgear install
pip3 install -U vidgear[asyncio]


