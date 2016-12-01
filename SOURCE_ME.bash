#!/bin/bash

if [ -z $RISCV ]; then
  export RISCV=$HOME/riscv/toolchain
  export PATH=$RISCV/bin:$PATH
 fi

