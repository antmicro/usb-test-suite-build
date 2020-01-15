#/bin/sh

set -e

# Initalize submodules
git submodule update --init --recursive

# Setup virtualenv
pip install --user virtualenv
virtualenv --python=python3 env

# Setup dependencies in virtualenv
. env/bin/activate
pip install -r conf/requirements.txt
pip install -e usb-test-suite-cocotb-usb/
cd litex
./litex_setup.py init install
cd -

# For building foboot firmware we need a rescv toolchain
wget https://static.dev.sifive.com/dev-tools/riscv64-unknown-elf-gcc-8.1.0-2019.01.0-x86_64-linux-ubuntu14.tar.gz
tar -xvf riscv64-unknown-elf-gcc-8.1.0-2019.01.0-x86_64-linux-ubuntu14.tar.gz
rm riscv64-unknown-elf-gcc-8.1.0-2019.01.0-x86_64-linux-ubuntu14.tar.gz

# fix script permissions of hex2bin module
cd "$VIRTUAL_ENV/bin"
chmod u+x bin2hex.py hex2bin.py hex2dump.py hexdiff.py hexinfo.py hexmerge.py || true
cd -
