#!/bin/bash

echo "- - - Cloning sgx-software-enable repository - - -"
cd ../
git clone https://github.com/intel/sgx-software-enable.git
cd sgx-software-enable/
echo

echo "- - - Making sgx-software-enable - - -"
make
echo

echo "- - - Running sgx-software-enable - - -"
sudo ./sgx_enable
echo

echo "- - - Checking SGX status - - -"
sudo ./sgx_enable --status
echo
