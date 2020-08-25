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

echo "- - - Removing SGX SDK Installation directory - - -"
rm -fr /opt/intel/sgxpsw
echo

echo "Uninstall complete."
