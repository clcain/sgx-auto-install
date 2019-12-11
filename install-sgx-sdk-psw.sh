#!/bin/bash

echo "- - - Cloning linux-sgx repository - - -"
cd ../
git clone https://github.com/intel/linux-sgx
cd linux-sgx/
git checkout sgx_2.7.1

echo "- - - Downloading binaries - - -"
./download_prebuilt.sh
echo

echo "- - - Compiling SGX SDK - - -"
make -j 4 sdk
echo

cd linux/installer/bin/

echo "- - - Building SGX SDK installer - - -"
./build-installpkg.sh sdk
echo

echo "- - - Running SGX SDK installer - - -"
echo yes | ./sgx_linux_x64_sdk_2.7.101.3.bin
if ! grep "source $PWD/sgxsdk/environment" ~/.bashrc
then
    echo "source $PWD/sgxsdk/environment" >> ~/.bashrc
fi
. ~/.bashrc
echo

cd ../../../

echo "- - - Compiling SGX PSW - - -"
make -j 4 psw
echo

cd linux/installer/bin/

echo "- - - Building SGX PSW installer - - -"
./build-installpkg.sh psw
echo

echo "- - - Running SGX PSW installer - - -"
sudo ./sgx_linux_x64_psw_2.7.101.3.bin
echo

echo "SGX SDK & PSW installation complete."
