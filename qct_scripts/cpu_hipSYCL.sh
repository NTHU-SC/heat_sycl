
module purge
module load boost-1.76.0

$HOME/opt/hipSYCL/bin/syclcc \
    heat_sycl.cpp \
    -O3 -v -DSYCL \
    -o build/heat_sycl-cpu_hipSYCL \
    --hipsycl-targets="omp"
