#!/bin/bash
cd /app

echo "Cloning riscv-gnu-toolchain repository"
git clone https://github.com/riscv/riscv-gnu-toolchain

cd riscv-gnu-toolchain
echo "Configuring riscv-gnu-toolchain"
./configure --prefix=/opt/riscv --with-arch=rv32imc

echo "Building riscv-gnu-toolchain"
make

echo "Cloning qemu"
git clone https://git.qemu.org/git/qemu.git
cd qemu

echo "Configuring qemu"
./configure --static --disable-system --target-list=riscv32-linux-user

echo "Building qemu"
make
cd build

echo "Copying bin files to /usr/bin/"
cp /app/riscv-gnu-toolchain/qemuriscv32-linux-user/qemu-riscv32 /usr/bin/qemu-riscv32
cp /opt/riscv/bin/riscv32-unknown-elf-gdb /usr/bin/riscv32-unknown-elf-gdb
cp /opt/riscv/bin/riscv32-unknown-elf-as /usr/bin/riscv32-unknown-elf-as
cp /opt/riscv/bin/riscv32-unknown-elf-ld /usr/bin/riscv32-unknown-elf-ld