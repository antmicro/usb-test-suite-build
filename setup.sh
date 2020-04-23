#/bin/sh

set -e

# Initalize submodules
# Update foboot separately, as it contains a lot of heavy dependencies
git -c submodule."foboot".update=none submodule update --init --recursive
git submodule update --init foboot

# Setup virtualenv
pip install virtualenv
virtualenv --python=python3 env

# Setup dependencies in virtualenv
. env/bin/activate
pip install -r conf/requirements.txt
pip install -e usb-test-suite-cocotb-usb/
cp litex/litex_setup.py .
./litex_setup.py init install

# For building foboot firmware we need a rescv toolchain
wget https://static.dev.sifive.com/dev-tools/riscv64-unknown-elf-gcc-8.1.0-2019.01.0-x86_64-linux-ubuntu14.tar.gz
tar -xvf riscv64-unknown-elf-gcc-8.1.0-2019.01.0-x86_64-linux-ubuntu14.tar.gz
rm riscv64-unknown-elf-gcc-8.1.0-2019.01.0-x86_64-linux-ubuntu14.tar.gz
