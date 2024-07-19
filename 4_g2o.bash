#!/bin/bash

# g2oのインストール
git clone https://github.com/RainerKuemmerle/g2o.git
cd g2o
mkdir build && cd build
cmake ..
make -j$(nproc)
make -j$(nproc) install