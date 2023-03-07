#! /bin/bash

export SUBDIR="8280L-CascadeLake"

# computecpp
module purge
module load computecpp
module load compiler/latest init_opencl/latest
module load ocl_headers
./run_variant.sh heat_sycl-cpu_computecpp

# hipSYCL
module purge
module load boost-1.76.0
./run_variant.sh heat_sycl-cpu_hipSYCL

# omp
module purge
module load compiler/latest
./run_variant.sh heat_omp

# llvm
module purge
module load gcc-11.3
module load compiler/latest init_opencl/latest
./run_variant.sh heat_sycl-cpu_llvm

# llvm-dpct
module load dpct/latest
./run_variant.sh heat_dpct-cpu_llvm
