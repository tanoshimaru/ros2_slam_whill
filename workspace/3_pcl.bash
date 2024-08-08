#!/bin/bash

# PCL 1.12のインストール
# https://pcl.readthedocs.io/projects/tutorials/en/latest/compiling_pcl_posix.html
wget https://github.com/PointCloudLibrary/pcl/releases/download/pcl-1.12.1/source.tar.gz
tar xvf source.tar.gz
rm source.tar.gz
cd pcl
mkdir build && cd build
cmake ..
make -j$(nproc)
make -j$(nproc) install