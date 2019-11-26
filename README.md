# USB test suite

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
Currently testing ValentyUSB and asics-ws [usb1_device](https://github.com/www-asics-ws/usb1_device) is supported.

Execute tests by calling:

```
# Make sure you are in the virtualenv
. env/bin/activate
cd usb-test-suite-testbenches
# Execute tests with default values
make sim
```

Make sure to run `make clean` when switching targets. See the README in **usb-test-suite-testbenches** for details.
