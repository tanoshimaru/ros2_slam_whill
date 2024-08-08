#!/bin/bash

#libusbのインストール
# https://github.com/libusb/libusb/releases
wget https://github.com/libusb/libusb/releases/download/v1.0.27/libusb-1.0.27.tar.bz2
tar jxvf libusb-1.0.27.tar.bz2
rm libusb-1.0.27.tar.bz2
cd libusb-1.0.27
./configure
make -j$(nproc)
make -j$(nproc) install