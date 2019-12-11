#!/bin/bash

echo "- - - Installing packages - - - "
sudo apt-get install -y build-essential ocaml ocamlbuild automake autoconf libtool wget python libssl-dev
sudo apt-get install -y libssl-dev libcurl4-openssl-dev protobuf-compiler libprotobuf-dev debhelper cmake
echo

./enable-sgx.sh
./install-sgx-driver.sh
./install-sgx-sdk-psw.sh
