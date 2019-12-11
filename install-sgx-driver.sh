#!/bin/bash

echo "- - - Installing headers - - -"
sudo apt-get install linux-headers-$(uname -r)
echo

echo "- - - Cloning linux-sgx-driver repository - - -"
cd ../
git clone https://github.com/intel/linux-sgx-driver.git
cd linux-sgx-driver/
echo

echo "- - - Building SGX driver - - -"
sudo make
echo

echo "- - - Installing SGX driver - - -"
sudo mkdir -p "/lib/modules/"`uname -r`"/kernel/drivers/intel/sgx"
sudo cp isgx.ko "/lib/modules/"`uname -r`"/kernel/drivers/intel/sgx"
sudo sh -c "cat /etc/modules | grep -Fxq isgx || echo isgx >> /etc/modules"
sudo /sbin/depmod
sudo /sbin/modprobe isgx
echo

echo "SGX driver installation complete."
