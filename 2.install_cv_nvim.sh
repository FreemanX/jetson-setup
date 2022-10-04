#!/bin/bash

script_dir=$(pwd)
nvim_version='0.8.0'
opencv_version='4.6.0'
sudo pip install virtualenv virtualenvwrapper
wget https://nodejs.org/dist/v14.17.4/node-v14.17.4-linux-arm64.tar.xz -P ~/Downloads/
wget https://github.com/neovim/neovim/archive/refs/tags/v${nvim_version}.zip -P ~/Downloads/

wget -O opencv.zip https://github.com/opencv/opencv/archive/refs/tags/${opencv_version}.zip 
mv opencv.zip ~/Downloads/
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/refs/tags/${opencv_version}.zip
mv opencv_contrib.zip ~/Downloads/
cd ~/Downloads
for z in *.zip; do echo $z; unzip $z; done
rm *.zip
tar -xvf node-v14.17.4-linux-arm64.tar.xz
rm *.xz
cd ~/Downloads/neovim-${nvim_version}
make -j4
sudo make install
cd ~/Downloads/node-v14.17.4-linux-arm64
rm *.md LICENSE
sudo cp -r ./* /usr/
cd ~/Downloads/opencv-${opencv_version}
cp $script_dir/cv_build.sh ./
mkdir build
cd build
cp -f ../cv_build.sh ./
./cv_build.sh
make
sudo make install

