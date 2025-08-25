#!/bin/bash

TOOLDIR="/home/jin/iree-build/tools"
IRDIR="./IR"
COMPILEOPT="--iree-hal-target-device=local \
            --iree-hal-local-target-device-backends=llvm-cpu \
            --iree-llvmcpu-target-cpu-features=host \
            --iree-llvmcpu-enable-ukernels=all \
            --mlir-print-ir-after-all \
            --mlir-print-ir-before-all \
            --mlir-disable-threading \
            --mlir-print-local-scope \
            --iree-hal-dump-executable-intermediates-to=${IRDIR} --x86-asm-syntax=intel"
MLIRFILE="matmul.mlir"
OUTFILE="matmul.vmfb"
IRDUMPFILE="dump.mlir"

${TOOLDIR}/iree-compile ${COMPILEOPT} ${MLIRFILE} -o ${OUTFILE} 2> ${IRDUMPFILE}
