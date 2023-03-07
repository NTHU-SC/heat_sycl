#! /bin/bash

export SUB_DIR="Tesla-V100"

# cuda
module purge
module load nvidia/cuda/11.7
./run_variant.sh heat_cuda

# hipSYCL
module purge
module load nvidia/cuda/11.7
module load boost-1.76.0
./run_variant.sh heat_sycl-gpu_hipSYCL

# llvm
module purge
module load nvidia/cuda/11.7
module load intel-llvm
./run_variant.sh heat_sycl-gpu_llvm

# llvm-dpct
module load dpct/latest
./run_variant.sh heat_dpct-gpu_llvm
