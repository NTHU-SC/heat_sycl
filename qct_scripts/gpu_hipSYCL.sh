
module purge
module load nvidia/cuda/11.7
module load boost-1.76.0

$HOME/opt/hipSYCL/bin/syclcc \
    heat_sycl_gpu.cpp \
    -O3 -v -DSYCL \
    -o build/heat_sycl-gpu_hipSYCL \
    --hipsycl-targets="cuda:sm_70" \
    --cuda-path="/opt/qct/hpc/pub/nvidia/cuda/cuda-11.7/" \
    -L/opt/qct/hpc/pub/nvidia/cuda/cuda-11.7/lib64

    