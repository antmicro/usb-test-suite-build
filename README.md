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
Currently only testing ValentyUSB is supported.

Execute tests by calling `PYTHON_BIN=python3 make sim`
