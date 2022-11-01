# Initialize Nvidia Jetson Nano    

## Scripts

### [IMPORTANT!!!] 0.setSwapMemorySize.sh 

Please execute `./0.setSwapMemorySize.sh -g 16` first to increase the SWAP size to 16G. `reboot` after changing the swap memory size.

Or just execute `jetson_setup.sh`

### 1.install_libs.sh   

Install essential libraries.

### 2.install_cv_nvim.sh    

Automatically download opencv4.6.0 and neovim (better than vim).

This script will then compile and install them. 
It takes very long time(a few hours) to compile opencv on Jetson Nano. 
So be patient.  

JetPack comes with opencv4.1.1 which is old and seems not to utilize the GPU.

### 3.install_pytorch_cvlibs.sh

Automatically download and install `pytorch` and other libraries for `yolov5` . 
To be tested starting from Jetpack4.6.
Installation will take a long time as some libraries are installed from their sources.

## After executing the scripts

- Make sure `export OPENBLAS_CORETYPE=ARMV8` is in your `.bashrc` or `.zshrc` file or just execute `echo "export OPENBLAS_CORETYPE=ARMV8" >> ~/.bashrc`. 
Otherwise, `import numpy` may fail.
- Test CSI camera: execute `nvgstcapture-1.0` or `nvgstcapture-1.0 --orientation 2`
- Recommend NoMachine for remote control: https://downloads.nomachine.com/download/?id=118&distro=ARM 

# Reference    
Torch for Jetson: https://forums.developer.nvidia.com/t/pytorch-for-jetson/72048
