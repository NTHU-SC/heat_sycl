
module purge
module load nvidia/cuda/11.7
module load intel-llvm

clang++ -fsycl -fsycl-targets=nvptx64-nvidia-cuda \
    -Xsycl-target-backend --cuda-gpu-arch=sm_70 \
    heat_sycl_gpu.cpp -DSYCL -std=c++17 -O3 \
     -o build/heat_sycl-gpu_llvm

module load dpct/latest

clang++ -fsycl -fsycl-targets=nvptx64-nvidia-cuda \
    -Xsycl-target-backend --cuda-gpu-arch=sm_70 \
    heat_dpct/heat_cuda.dp.cpp -DSYCL -std=c++17 -O3 \
     -o build/heat_dpct-gpu_llvm
     
