# USB test suite

This is a [Cocotb](https://github.com/cocotb/cocotb) based USB 1.1 test suite (to be extended to cover higher versions of the standard) for FPGA IP, with testbenches for a variety of open source USB cores. Cocotb enables testing IPs with Python, which makes for a very robust and developer-friendly workflow.

This repository is a top level repo, with libraries used by the project and specific testbenches and cores as submodules.

## Setup

It is recommended that you use a virtualenv or similar tool.
This will be taken care of by the `setup.sh` script.

### Prerequisites

* python3
* pip
* iverilog

### Steps

```
# Install dependencies
sudo apt install python3 python3-pip iverilog
# Clone the repository.
git clone https://github.com/antmicro/usb-test-suite-build.git
cd usb-test-suite-build
# Run script to setup environment
./setup.sh
```

## Usage

Use the Makefile in **usb-test-suite-testbenches** folder to choose the IP core and test module.
Currently testing [ValentyUSB](https://github.com/im-tomu/valentyusb) and [asics-ws usb1_device](https://github.com/www-asics-ws/usb1_device) is supported.

Execute tests by calling:

```
# Make sure you are in the virtualenv
. env/bin/activate
cd usb-test-suite-testbenches
# Execute tests with default values
make sim
```

Make sure to run `make clean` when switching targets. See the README in **usb-test-suite-testbenches** for details.
