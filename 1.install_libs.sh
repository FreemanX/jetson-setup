#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt install tmux zsh htop libtool-bin clang-format curl -y
sudo apt install build-essential cmake pkg-config unzip yasm git checkinstall -y
sudo apt install libjpeg-dev libpng-dev libtiff-dev -y
sudo apt install libavcodec-dev libavformat-dev libswscale-dev libavresample-dev -y
sudo apt install libxvidcore-dev x264 libx264-dev libfaac-dev libmp3lame-dev libtheora-dev -y
sudo apt install libfaac-dev libmp3lame-dev libvorbis-dev -y
sudo apt install libopencore-amrnb-dev libopencore-amrwb-dev -y
sudo apt-get install libdc1394-22 libdc1394-22-dev libxine2-dev libv4l-dev v4l-utils -y
sudo ln -s -f /usr/include/libv4l1-videodev.h /usr/include/linux/videodev.h
sudo apt install python3-pip libopenblas-base libopenblas-dev libopenmpi-dev -y
sudo apt install libgtk-3-dev -y
sudo apt install python3-dev -y
sudo apt install python3-testresources -y
sudo apt install libtbb-dev -y
sudo apt install libatlas-base-dev gfortran -y
sudo apt install libprotobuf-dev protobuf-compiler -y
sudo apt install libgphoto2-dev libeigen3-dev libhdf5-dev doxygen -y
sudo apt install libfreetype6-dev -y
sudo apt install libfontconfig1-dev -y
sudo apt install qt5-default pyqt5-dev pyqt5-dev-tools python3-pyqt5 -y
sudo apt install python3-smbus -y
sudo apt autoremove
sudo apt autoclean
sudo apt clean


sudo -H pip3 install -U jetson-stats
sudo systemctl restart jetson_stats.service
pip3 install -U pip numpy
export OPENBLAS_CORETYPE=ARMV8
pip3 install --upgrade google-api-python-client google-auth-httplib2 google-auth-oauthlib
pip3 install oauth2client
pip3 install pynvim
pip3 install psutil
pip3 install pyserial
pip3 install --upgrade google-api-python-client google-auth-httplib2 google-auth-oauthlib
pip3 install Cython
test -d ~/Downloads || mkdir ~/Downloads
cd ~/Downloads
sudo pip3 install Jetson.GPIO
sudo groupadd -f -r gpio
sudo usermod -a -G gpio $USER
git clone https://github.com/NVIDIA/jetson-gpio.git
cd jetson-gpio
sudo cp lib/python/Jetson/GPIO/99-gpio.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules && sudo udevadm trigger
