# USB test suite

## Setup
### Prerequisites
* python3
* cocotb
* iverilog

### Build package
```
# Ensure wheel package is installed
# pip3 install wheel
cd cocotb-usb
python3 setup.py sdist bdist_wheel
pip3 install --user -e .
```

## Usage
Use makefile in **testbenches** folder to choose IP core and test module.
Currently testing ValentyUSB and asics-ws [usb1_device](https://github.com/www-asics-ws/usb1_device) is supported.

Execute tests by calling:

```
cd usb-test-suite-testbenches
make sim
```
