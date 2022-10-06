#!/bin/bash

export OPENBLAS_CORETYPE=ARMV8
cd ~/Downloads

sudo -H pip3 install 'pillow<=8.4'
sudo -H pip3 install --upgrade 'setuptools==58.2.0'
sudo -H python3 -m pip install --upgrade pip
sudo -H pip3 install cppy
sudo pip3 install 'kiwisolver>=1.0.1'
sudo apt-get remove -y python3-matplotlib
git clone --branch v3.3.0 https://github.com/matplotlib/matplotlib.git
cd matplotlib/
sudo -E python3 setup.py install

sudo -E pip3 install "Pillow>=7.1.2"

sudo rm -rf /usr/lib/python3/dist-packages/yaml/
sudo rm -rf /usr/lib/python3/dist-packages/PyYAML-3.12.egg-info
sudo -E pip3 install "PyYAML>=5.3.1" --ignore-installed

sudo -E pip3 install 'requests>=2.23.0'
sudo -E pip3 install "scipy>=1.4.1"
sudo -E pip3 install "tqdm>=4.64.0"
sudo -E pip3 install "protobuf<=3.20.1"
sudo -E pip3 install "tensorboard>=2.4.1"
sudo -E pip3 install "pandas>=1.1.4"
sudo -E pip3 install "seaborn>=0.11.0"
sudo -E pip3 install "coremltools>=6.0"
sudo -E pip3 install "nvidia-pyindex"
sudo -E pip3 install ipython
sudo -E pip3 install psutil
sudo -E pip3 install "thop>=0.1.1"


pip3 install --global-option=build_ext --global-option="-I/usr/local/cuda/include" --global-option="-L/usr/local/cuda/lib64" pycuda
sudo apt-get -y install autoconf bc build-essential g++-8 gcc-8 clang-8 lld-8 gettext-base gfortran-8 iputils-ping libbz2-dev libc++-dev libcgal-dev libffi-dev libfreetype6-dev libhdf5-dev libjpeg-dev liblzma-dev libncurses5-dev libncursesw5-dev libpng-dev libreadline-dev libssl-dev libsqlite3-dev libxml2-dev libxslt-dev locales moreutils openssl python-openssl rsync scons python3-pip libopenblas-dev

# install pytorch 1.11 and torchvision 0.11.0 (0.12.0 won't work)
TORCH_INSTALL="https://developer.download.nvidia.com/compute/redist/jp/v461/pytorch/torch-1.11.0a0+17540c5+nv22.01-cp36-cp36m-linux_aarch64.whl"

wget $TORCH_INSTALL
sudo -H pip3 install torch-1.11.0a0+17540c5+nv22.01-cp36-cp36m-linux_aarch64.whl
sudo apt install -y libjpeg-dev zlib1g-dev libpython3-dev libavcodec-dev libavformat-dev libswscale-dev
git clone --branch v0.11.0 https://github.com/pytorch/vision torchvision 
cd torchvision
sudo apt install libomp5
sudo apt install libomp-dev
sudo -E python3 setup.py install
cd ..
