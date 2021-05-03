#!/bin/bash

# install nvidia-driver and cuda, if you have nvidia GPUs
sudo ubuntu-drivers autoinstall

# CUDA 11.1
cd ~/Downloads
wget https://developer.download.nvidia.com/compute/cuda/11.1.0/local_installers/cuda_11.1.0_455.23.05_linux.run
sudo sh cuda_11.1.0_455.23.05_linux.run
cd -

# To uninstall the CUDA Toolkit, run cuda-uninstaller in /usr/local/cuda-11.1/bin
# To uninstall the NVIDIA Driver, run nvidia-uninstall


echo "export CUDA_HOME=/usr/local/cuda-11.1 " >> /home/$(whoami)/.bashrc
echo "export CUDA_INC_PATH=\${CUDA_HOME}/include    " >> /home/$(whoami)/.bashrc
echo "export CUDA_LIB_PATH=\${CUDA_HOME}/lib64     " >> /home/$(whoami)/.bashrc
echo "export CUDA_INSTALL_PATH=\${CUDA_HOME}    " >> /home/$(whoami)/.bashrc
echo "export PATH=\${CUDA_HOME}/bin:\$PATH    " >> /home/$(whoami)/.bashrc
echo "export PATH=\${CUDA_HOME}/computeprof/bin:\$PATH     " >> /home/$(whoami)/.bashrc
echo "export LD_LIBRARY_PATH=\${CUDA_HOME}/computeprof/bin:\$LD_LIBRARY_PATH    " >> /home/$(whoami)/.bashrc
echo "export LD_LIBRARY_PATH=\${CUDA_HOME}/lib64:\$LD_LIBRARY_PATH    " >> /home/$(whoami)/.bashrc
echo "export LD_LIBRARY_PATH=\${CUDA_HOME}/extras/CUPTI/lib64:\$LD_LIBRARY_PATH    " >> /home/$(whoami)/.bashrc
echo "export MANPATH=\${CUDA_HOME}/man:\$MANPATH    " >> /home/$(whoami)/.bashrc
echo "export OPENCL_HOME=\${CUDA_HOME}    " >> /home/$(whoami)/.bashrc
echo "export OPENCL_INC_PATH=\${OPENCL_HOME}/include    " >> /home/$(whoami)/.bashrc
echo "export OPENCL_LIB_PATH=\${OPENCL_HOME}/lib64    " >> /home/$(whoami)/.bashrc
echo "export LD_LIBRARY_PATH=\${OPENCL_LIB_PATH}:\$LD_LIBRARY_PATH" >> /home/$(whoami)/.bashrc

