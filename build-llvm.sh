#! /bin/bash
#
# Script to build RISC-V ISA simulator, proxy kernel, and GNU toolchain.
# Tools will be installed to $RISCV.

. build.common

if [ ! `which riscv64-unknown-elf-gcc` ]
then
  echo "riscv64-unknown-elf-gcc doesn't appear to be installed; use the full-on build.sh"
  exit 1
fi

echo "Starting RISC-V Toolchain build process"

build_project riscv-llvm --prefix=$RISCV

echo -e "\\nRISC-V Toolchain installation completed!"
