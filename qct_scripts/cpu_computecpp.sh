
module purge
module load computecpp
module load compiler/latest init_opencl/latest
module load ocl_headers

compute++ -sycl -sycl-driver -DSYCL -std=c++17 -O3 \
    -no-serial-memop \
    heat_sycl.cpp \
     -o build/heat_sycl-cpu_computecpp \
     -lComputeCpp
