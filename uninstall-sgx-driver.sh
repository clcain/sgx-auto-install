#!/bin/bash

cd ../linux-sgx-driver/

echo "- - - Uninstalling SGX driver - - -"
sudo /sbin/modprobe -r isgx
sudo rm -rf "/lib/modules/"`uname -r`"/kernel/drivers/intel/sgx"
sudo /sbin/depmod
sudo /bin/sed -i '/^isgx$/d' /etc/modules
echo

echo "- - - Removing linux-sgx-driver repository - - -"
cd ../
sudo rm -rf linux-sgx-driver/
echo

echo "SGX driver uninstalled."
