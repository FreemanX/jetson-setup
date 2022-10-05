#!/bin/bash

pip3 install --global-option=build_ext --global-option="-I/usr/local/cuda/include" --global-option="-L/usr/local/cuda/lib64" pycuda
sudo apt-get -y install autoconf bc build-essential g++-8 gcc-8 clang-8 lld-8 gettext-base gfortran-8 iputils-ping libbz2-dev libc++-dev libcgal-dev libffi-dev libfreetype6-dev libhdf5-dev libjpeg-dev liblzma-dev libncurses5-dev libncursesw5-dev libpng-dev libreadline-dev libssl-dev libsqlite3-dev libxml2-dev libxslt-dev locales moreutils openssl python-openssl rsync scons python3-pip libopenblas-dev

# install pytorch 1.11 and torchvision 0.11.0 (0.12.0 won't work)
TORCH_INSTALL="https://developer.download.nvidia.com/compute/redist/jp/v461/pytorch/torch-1.11.0a0+17540c5+nv22.01-cp36-cp36m-linux_aarch64.whl"
cd ~/Downloads

wget $TORCH_INSTALL
sudo -H pip3 install torch-1.11.0a0+17540c5+nv22.01-cp36-cp36m-linux_aarch64.whl
sudo apt install -y libjpeg-dev zlib1g-dev libpython3-dev libavcodec-dev libavformat-dev libswscale-dev
git clone --branch v0.11.0 https://github.com/pytorch/vision torchvision 
cd torchvision
sudo apt install libomp5
sudo apt install libomp-dev
sudo -E python3 setup.py install
cd ..
