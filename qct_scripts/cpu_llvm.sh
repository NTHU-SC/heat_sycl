
module purge
module load gcc-11.3
module load compiler/latest init_opencl/latest

icpx -fsycl -DSYCL -std=c++17 -O3 \
    heat_sycl.cpp  \
     -o build/heat_sycl-cpu_llvm


module load dpct/latest

icpx -fsycl -DSYCL -std=c++17 -O3 \
    heat_dpct/heat_cuda.dp.cpp  \
     -o build/heat_dpct-cpu_llvm
     