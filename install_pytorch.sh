#!/bin/bash

# install pytorch
cd ~/Downloads

wget -O torch-1.10.0-cp36-cp36m-linux_aarch64.whl https://nvidia.box.com/shared/static/fjtbno0vpo676a25cgvuqc1wty0fkkg6.whl
sudo -H pip3 install torch-1.10.0-cp36-cp36m-linux_aarch64.whl
sudo apt install -y libjpeg-dev zlib1g-dev libpython3-dev libavcodec-dev libavformat-dev libswscale-dev
git clone --branch v0.2.2 https://github.com/pytorch/vision torchvision 
cd torchvision
sudo -H python3 setup.py install
cd ..
# install yolov5 dependencies
sudo -H pip3 install matplotlib
sudo -H pip3 install 'pillow<7'
sudo -H pip3 install PyYAML
sudo -H pip3 install requests
sudo -H pip3 install scipy
sudo -H pip3 install tqdm
sudo -H pip3 install tensorboard
sudo -H pip3 install pandas
sudo -H pip3 install seaborn
sudo -H pip3 install thop
sudo -H pip3 install python-tensorrt
sudo pip3 install --global-option=build_ext --global-option="-I/usr/local/cuda/include" --global-option="-L/usr/local/cuda/lib64" pycuda

