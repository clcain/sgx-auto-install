# Intel SGX Automated Installation Scripts

This is a collection of scripts that make installing Intel SGX easier. It has been tested on an Intel NUC running Debian 10. These scripts assume you are running a standard Debian 10 installation with no Intel SGX software already installed.

## Overview

There are a few steps that one must follow in order to get a working Intel SGX installation on their Debian 10 system. The official instructions are listed in the README of the [linux-sgx](https://github.com/intel/linux-sgx) repo.

1. Enable Intel SGX in the system BIOS/UEFI menu (must be done manually)
2. Install prerequisite packages through apt
3. Enable Intel SGX using [sgx-software-enable](https://github.com/intel/sgx-software-enable.git) (this is for if you selected automiatc mode for SGX in the BIOS/UEFI, for which SGX is disabled until enabled through software)
4. Compile and install the Intel SGX driver (a kernel module)
5. Compile and install the Intel SGX SDK (system libraries for compiling SGX code)
6. Compile and install the Intel SGX PSW (a background service that manages SGX enclaves)

If you run `./install.sh`, it should do all of these for you (with the exception of enabling Intel SGX in your BIOS/UEFI, which you must do youself).

## Installation

You can choose an individual installation file, or you can install everything with:

```
./install.sh
```

*Note: These scripts assume you want the Intel SGX repositories placed in the parent directory of this repository. Please ensure that you run `install.sh` from the directory where it is located.*

## Uninstallation

Same as the installation. You can use one of the individual uninstallation scripts, or uninstall everything with:

```
./uninstall.sh
```
