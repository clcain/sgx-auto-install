#!/bin/bash

echo "- - - Uninstalling SGX PSW - - -"
sudo /opt/intel/sgxpsw/uninstall.sh
echo

echo "- - - Uninstalling SGX SDK - - -"
../linux-sgx/linux/installer/bin/sgxsdk/uninstall.sh
echo

echo "- - - Removing linux-sgx repository - - -"
rm -rf ../linux-sgx
echo

echo "Uninstall complete."
